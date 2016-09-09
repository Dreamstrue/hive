package generator;

import javax.sql.DataSource;
import com.jfinal.kit.PathKit;
import com.jfinal.kit.Prop;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.dialect.MysqlDialect;
import com.jfinal.plugin.activerecord.generator.DataDictionaryGenerator;
import com.jfinal.plugin.activerecord.generator.Generator;
import com.jfinal.plugin.c3p0.C3p0Plugin;

/**
 * GeneratorDemo
 */
public class GeneratorDemo {
	
	private static C3p0Plugin c3p0Plugin = null;
	
	public static DataSource getDataSource() {
		Prop p = PropKit.use("config/config.properties");
		if(c3p0Plugin==null){
			c3p0Plugin = new C3p0Plugin(p.get("jdbc_url"), p.get("jdbc_username"), p.get("jdbc_password"));
			c3p0Plugin.start();
		}
		return c3p0Plugin.getDataSource();
	}
	
	public static void main(String[] args) {
		String rootPackageName = "com.hive.agfs";//所在报名，即java文件中的package
		String rootOutputDir = PathKit.getWebRootPath() + "/../src/com/hive/agfs";//生成文件要输出的位置
		// base model 所使用的包名
		String baseModelPackageName = rootPackageName+".base";
		// base model 文件保存路径
		String baseModelOutputDir = rootOutputDir + "/base";
		// model 所使用的包名 (MappingKit 默认使用的包名)
		String modelPackageName = rootPackageName+".model";
		// model 文件保存路径 (MappingKit 与 DataDictionary 文件默认保存路径)
		String modelOutputDir = rootOutputDir + "/model";
		// 创建生成器
		Generator gernerator = new Generator(getDataSource(), baseModelPackageName, baseModelOutputDir, modelPackageName, modelOutputDir);
		// 设置数据库方言
		gernerator.setDialect(new MysqlDialect());
		// 添加不需要生成的表名
		gernerator.addExcludedTable("adv");
		// 设置是否在 Model 中生成 dao 对象
		gernerator.setGenerateDaoInModel(true);
		// 设置是否生成字典文件
		gernerator.setGenerateDataDictionary(true);
		//设置字典文件生成的位置
		gernerator.setDataDictionaryGenerator(new DataDictionaryGenerator(getDataSource(), rootOutputDir));
		//设置mappingKit所在包和输出的路径
		gernerator.setMappingKitGenerator(new MyMappingKitGenerator(rootPackageName, rootOutputDir));
		// 设置需要被移除的表名前缀用于生成modelName。例如表名 "osc_user"，移除前缀 "osc_"后生成的model名为 "User"而非 OscUser
		gernerator.setRemovedTableNamePrefixes("t_");
		
//		gernerator.setMetaBuilder(metaBuilder);//不知道干啥用？
//		gernerator.setTypeMapping(typeMapping);//不知道干啥用？
		
		// 生成
		gernerator.generate();
		c3p0Plugin.stop();
	}
}




