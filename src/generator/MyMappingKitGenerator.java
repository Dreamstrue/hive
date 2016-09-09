package generator;

import java.util.List;

import com.jfinal.plugin.activerecord.generator.MappingKitGenerator;
import com.jfinal.plugin.activerecord.generator.TableMeta;
/**
 * yyf
 * 20160908
 * 自定义MappingKitGenerator
 * @author GF
 *
 */
public class MyMappingKitGenerator extends MappingKitGenerator{

	private String myImportTemplate = "import com.hive.agfs.model.%s;%n%n";
	  
	/**
	 * 由于MappingKitGenerator没有默认构造函数，所以自定义的MappingKitGenerator必须重写父类的某个构造函数
	 * @param mappingKitPackageName
	 * @param mappingKitOutputDir
	 */
	public MyMappingKitGenerator(String mappingKitPackageName,String mappingKitOutputDir) {
		super(mappingKitPackageName, mappingKitOutputDir);
	}
	/**
	 * 
	 */
	@Override
	public void generate(List<TableMeta> tableMetas) {
	    System.out.println("Generate MappingKit file ...");
	    StringBuilder ret = new StringBuilder();
	    genPackage(ret);
	    genImport(ret);
	    //在自定义mappingKit的输出位置的时候，如果mappingKit和Model类没有在同一包下时，需要import一下
	    for(TableMeta tm : tableMetas){
//	    	System.out.println(tm.modelName+"&&&&&&&&&&&&&");
	    	String add = String.format(this.myImportTemplate, new Object[] {tm.modelName });
	    	ret.append(add);
	    }
	    genClassDefine(ret);
	    genMappingMethod(tableMetas, ret);
	    ret.append(String.format("}%n%n", new Object[0]));
	    wirtToFile(ret);
	}
	

	
}
