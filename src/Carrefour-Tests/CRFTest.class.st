Class {
	#name : #CRFTest,
	#superclass : #TestCase,
	#instVars : [
		'famixModel',
		'fastModel'
	],
	#category : #'Carrefour-Tests'
}

{ #category : #accessing }
CRFTest >> famixModel [
	^ famixModel
]

{ #category : #accessing }
CRFTest >> famixModel: anObject [
	famixModel := anObject
]

{ #category : #resources }
CRFTest >> famixModelString [ 
	"A famix model to test the binder.
	The source code can be found in #fastString"
	^ '[{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":1,"element":{"ref":610},"endPos":4500,"fileName":"./src/hello\\Hello.java","startPos":4292},{"FM3":"Famix-Java-Entities.Implementation","id":2,"implementingClass":{"ref":254},"interface":{"ref":341},"previous":{"ref":445}},{"FM3":"Famix-Java-Entities.Class","id":3,"name":"Label","isStub":true,"typeContainer":{"ref":478}},{"FM3":"Famix-Java-Entities.Method","id":4,"name":"ImageButtonTreeUtils","isStub":true,"kind":"constructor","parentType":{"ref":498},"signature":"ImageButtonTreeUtils(?,?,?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Parameter","id":5,"name":"event","parentBehaviouralEntity":{"ref":13}},{"FM3":"Famix-Java-Entities.Inheritance","id":6,"subclass":{"ref":575},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":7,"element":{"ref":506},"endPos":2522,"fileName":"./src/hello\\Hello.java","startPos":2453},{"FM3":"Famix-Java-Entities.Access","id":8,"accessor":{"ref":142},"previous":{"ref":621},"variable":{"ref":178}},{"FM3":"Famix-Java-Entities.Interface","id":9,"name":"Closeable","isStub":true,"typeContainer":{"ref":515},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":10,"element":{"ref":646},"endPos":4426,"fileName":"./src/hello\\Hello.java","startPos":4417},{"FM3":"Famix-Java-Entities.PrimitiveType","id":11,"name":"boolean","isStub":true},{"FM3":"Famix-Java-Entities.AnnotationInstance","id":12,"annotatedEntity":{"ref":506},"annotationType":{"ref":130}},{"FM3":"Famix-Java-Entities.Method","id":13,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":106},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Type","id":14,"name":"InnerAtt","isStub":true,"typeContainer":{"ref":426}},{"FM3":"Famix-Java-Entities.Attribute","id":15,"name":"hello","declaredType":{"ref":271},"parentType":{"ref":90},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":16,"element":{"ref":8},"endPos":591,"fileName":"./src/hello\\Hello.java","startPos":588},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":17,"element":{"ref":476},"endPos":5265,"fileName":"./src/hello\\Hello.java","startPos":5219},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":18,"element":{"ref":482},"endPos":4832,"fileName":"./src/hello\\Hello.java","startPos":4514},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":19,"element":{"ref":62},"endPos":605,"fileName":"./src/hello\\Hello.java","startPos":588},{"FM3":"Famix-Java-Entities.Invocation","id":20,"candidates":[{"ref":356}],"receiver":{"ref":313},"sender":{"ref":49},"signature":"call(Hello.classProperty)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":21,"element":{"ref":651},"endPos":4828,"fileName":"./src/hello\\Hello.java","startPos":4632},{"FM3":"Famix-Java-Entities.Method","id":22,"name":"_Anonymous(Oupsi)","isStub":true,"kind":"constructor","parentType":{"ref":637},"signature":"_Anonymous(Oupsi)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":23,"name":"patate","declaredType":{"ref":254},"parentType":{"ref":90},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":24,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":426},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":25,"element":{"ref":479},"endPos":834,"fileName":"./src/hello\\Hello.java","startPos":818},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":26,"element":{"ref":496},"endPos":1143,"fileName":"./src/hello\\Hello.java","startPos":1134},{"FM3":"Famix-Java-Entities.LocalVariable","id":27,"name":"you","declaredType":{"ref":90},"parentBehaviouralEntity":{"ref":334}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":28,"element":{"ref":564},"endPos":1295,"fileName":"./src/hello\\Hello.java","startPos":1291},{"FM3":"Famix-Java-Entities.Class","id":29,"name":"InnerAtt","isStub":true,"typeContainer":{"ref":24}},{"FM3":"Famix-Java-Entities.Method","id":30,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":273},"signature":"Label(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":31,"candidates":[{"ref":95}],"sender":{"ref":401},"signature":"String()"},{"FM3":"Famix-Java-Entities.Inheritance","id":32,"subclass":{"ref":341},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Reference","id":33,"previous":{"ref":390},"referencer":{"ref":142},"referredType":{"ref":364}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":34,"element":{"ref":326},"endPos":3905,"fileName":"./src/hello\\Hello.java","startPos":3891},{"FM3":"Famix-Java-Entities.ParameterizedType","id":35,"name":"Comparable","isStub":true,"parameterizableClass":{"ref":229},"typeContainer":{"ref":405}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":36,"element":{"ref":487},"endPos":3172,"fileName":"./src/hello\\Hello.java","startPos":3148},{"FM3":"Famix-Java-Entities.Attribute","id":37,"name":"rel","parentType":{"ref":477}},{"FM3":"Famix-Java-Entities.LocalVariable","id":38,"name":"label","parentBehaviouralEntity":{"ref":549}},{"FM3":"Famix-Java-Entities.Type","id":39,"name":"V","isStub":true,"typeContainer":{"ref":519}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":40,"element":{"ref":545},"endPos":391,"fileName":"./src/hello\\Hello.java","startPos":387},{"FM3":"Famix-Java-Entities.Invocation","id":41,"candidates":[{"ref":340}],"previous":{"ref":644},"sender":{"ref":526},"signature":"_Anonymous(BLAbstractLienSimple)(\"Un lien simple\",\"Exemple de lien simple\",true,false)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":42,"element":{"ref":657},"endPos":5151,"fileName":"./src/hello\\Hello.java","startPos":5026},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":43,"element":{"ref":388},"endPos":3440,"fileName":"./src/hello\\Hello.java","startPos":3429},{"FM3":"Famix-Java-Entities.LocalVariable","id":44,"name":"lienSimple","parentBehaviouralEntity":{"ref":526}},{"FM3":"Famix-Java-Entities.Interface","id":45,"name":"ConstantDesc","isStub":true,"typeContainer":{"ref":170},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":46,"element":{"ref":162},"endPos":3827,"fileName":"./src/hello\\Hello.java","startPos":3451},{"FM3":"Famix-Java-Entities.Method","id":47,"name":"println","declaredType":{"ref":634},"isStub":true,"parentType":{"ref":450},"signature":"println(String)","visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":48,"previous":{"ref":183},"referencer":{"ref":570},"referredType":{"ref":484}},{"FM3":"Famix-Java-Entities.Method","id":49,"name":"classPropertyAccess","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":1,"parentType":{"ref":90},"signature":"classPropertyAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.Attribute","id":50,"name":"canard","parentType":{"ref":90}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":51,"element":{"ref":615},"endPos":1764,"fileName":"./src/hello\\Hello.java","startPos":1643},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":52,"element":{"ref":200},"endPos":945,"fileName":"./src/hello\\Hello.java","startPos":940},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":53,"element":{"ref":411},"endPos":878,"fileName":"./src/hello\\Hello.java","startPos":866},{"FM3":"Famix-Java-Entities.Attribute","id":54,"name":"out","isClassSide":true,"isFinal":true,"isStub":true,"parentType":{"ref":181},"visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":55,"previous":{"ref":221},"referencer":{"ref":478},"referredType":{"ref":3}},{"FM3":"Famix-Java-Entities.Parameter","id":56,"name":"event","parentBehaviouralEntity":{"ref":659}},{"FM3":"Famix-Java-Entities.Invocation","id":57,"candidates":[{"ref":576}],"sender":{"ref":142},"signature":"HashMap()"},{"FM3":"Famix-Java-Entities.Reference","id":58,"previous":{"ref":309},"referencer":{"ref":142},"referredType":{"ref":242}},{"FM3":"Famix-Java-Entities.Class","id":59,"name":"Canard","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":60,"element":{"ref":137},"endPos":901,"fileName":"./src/hello\\Hello.java","startPos":891},{"FM3":"Famix-Java-Entities.Method","id":61,"name":"useThisForFieldAccess","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":4,"parentType":{"ref":90},"signature":"useThisForFieldAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.Invocation","id":62,"candidates":[{"ref":210}],"previous":{"ref":357},"receiver":{"ref":178},"sender":{"ref":142},"signature":"put(\"2\",\"2\")"},{"FM3":"Famix-Java-Entities.Inheritance","id":63,"subclass":{"ref":103},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":64,"element":{"ref":499},"endPos":1171,"fileName":"./src/hello\\Hello.java","startPos":1084},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":65,"element":{"ref":235},"endPos":1925,"fileName":"./src/hello\\Hello.java","startPos":1909},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":66,"element":{"ref":151},"endPos":4507,"fileName":"./src/hello\\Hello.java","startPos":4187},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":67,"element":{"ref":414},"endPos":1559,"fileName":"./src/hello\\Hello.java","startPos":1548},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":68,"element":{"ref":61},"endPos":1178,"fileName":"./src/hello\\Hello.java","startPos":986},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":69,"element":{"ref":104},"endPos":2228,"fileName":"./src/hello\\Hello.java","startPos":2124},{"FM3":"Famix-Java-Entities.Method","id":70,"name":"println","declaredType":{"ref":634},"isStub":true,"parentType":{"ref":450},"signature":"println(char[])","visibility":"public"},{"FM3":"Famix-Java-Entities.Inheritance","id":71,"subclass":{"ref":45},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Inheritance","id":72,"subclass":{"ref":635},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":73,"element":{"ref":270},"endPos":5077,"fileName":"./src/hello\\Hello.java","startPos":5068},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":74,"element":{"ref":310},"endPos":5265,"fileName":"./src/hello\\Hello.java","startPos":5231},{"FM3":"Famix-Java-Entities.Invocation","id":75,"candidates":[{"ref":607}],"previous":{"ref":643},"sender":{"ref":369},"signature":"_Anonymous(ClickHandler)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":76,"element":{"ref":652},"endPos":5265,"fileName":"./src/hello\\Hello.java","startPos":5231},{"FM3":"Famix-Java-Entities.Inheritance","id":77,"subclass":{"ref":9},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":78,"element":{"ref":644},"endPos":2681,"fileName":"./src/hello\\Hello.java","startPos":2640},{"FM3":"Famix-Java-Entities.Parameter","id":79,"name":"event","parentBehaviouralEntity":{"ref":559}},{"FM3":"Famix-Java-Entities.Method","id":80,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":477},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.Reference","id":81,"previous":{"ref":87},"referencer":{"ref":186},"referredType":{"ref":520}},{"FM3":"Famix-Java-Entities.Inheritance","id":82,"subclass":{"ref":175},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.LocalVariable","id":83,"name":"db","parentBehaviouralEntity":{"ref":602}},{"FM3":"Famix-Java-Entities.Type","id":84,"name":"Button","isStub":true,"typeContainer":{"ref":398}},{"FM3":"Famix-Java-Entities.Class","id":85,"name":"_Anonymous(QuicksearchExempleREL)","typeContainer":{"ref":80},"visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":86,"candidates":[{"ref":421}],"previous":{"ref":610},"sender":{"ref":151},"signature":"_Anonymous(Button)(\"I''am a Button\")"},{"FM3":"Famix-Java-Entities.Reference","id":87,"previous":{"ref":115},"referencer":{"ref":186},"referredType":{"ref":181}},{"FM3":"Famix-Java-Entities.Reference","id":88,"referencer":{"ref":94},"referredType":{"ref":254}},{"FM3":"Famix-Java-Entities.Invocation","id":89,"candidates":[{"ref":594}],"previous":{"ref":535},"sender":{"ref":465},"signature":"Button()"},{"FM3":"Famix-Java-Entities.Class","id":90,"name":"Hello","typeContainer":{"ref":297},"visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":91,"referencer":{"ref":401},"referredType":{"ref":254}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":92,"element":{"ref":357},"endPos":583,"fileName":"./src/hello\\Hello.java","startPos":566},{"FM3":"Famix-Java-Entities.Parameter","id":93,"name":"i","declaredType":{"ref":271},"parentBehaviouralEntity":{"ref":101}},{"FM3":"Famix-Java-Entities.Method","id":94,"name":"build","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":294},"signature":"build()","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":95,"name":"String","isStub":true,"kind":"constructor","parentType":{"ref":254},"signature":"String()","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":96,"candidates":[{"ref":389}],"previous":{"ref":495},"sender":{"ref":381},"signature":"getInstance()"},{"FM3":"Famix-Java-Entities.Inheritance","id":97,"subclass":{"ref":181},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Access","id":98,"accessor":{"ref":142},"previous":{"ref":259},"variable":{"ref":178}},{"FM3":"Famix-Java-Entities.Access","id":99,"accessor":{"ref":559},"isWrite":true,"variable":{"ref":545}},{"FM3":"Famix-Java-Entities.Type","id":100,"name":"ImageButton","isStub":true,"typeContainer":{"ref":381}},{"FM3":"Famix-Java-Entities.Method","id":101,"name":"returnNumber","cyclomaticComplexity":1,"declaredType":{"ref":271},"numberOfStatements":1,"parentType":{"ref":90},"signature":"returnNumber(int)","visibility":"private"},{"FM3":"Famix-Java-Entities.Access","id":102,"accessor":{"ref":198},"previous":{"ref":467},"variable":{"ref":110}},{"FM3":"Famix-Java-Entities.Interface","id":103,"name":"MyInterface","typeContainer":{"ref":297},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":104,"name":"array","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":90},"signature":"array()","visibility":"private"},{"FM3":"Famix-Java-Entities.Reference","id":105,"previous":{"ref":293},"referencer":{"ref":506},"referredType":{"ref":130}},{"FM3":"Famix-Java-Entities.Class","id":106,"name":"_Anonymous(Button)","typeContainer":{"ref":549},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":107,"element":{"ref":526},"endPos":3310,"fileName":"./src/hello\\Hello.java","startPos":2547},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":108,"element":{"ref":91},"endPos":130,"fileName":"./src/hello\\MyClass.java","startPos":119},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":109,"element":{"ref":227},"endPos":5161,"fileName":"./src/hello\\Hello.java","startPos":4978},{"FM3":"Famix-Java-Entities.Attribute","id":110,"name":"classProperty","declaredType":{"ref":271},"isClassSide":true,"parentType":{"ref":90},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":111,"element":{"ref":328},"endPos":719,"fileName":"./src/hello\\Hello.java","startPos":688},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":112,"element":{"ref":27},"endPos":1925,"fileName":"./src/hello\\Hello.java","startPos":1903},{"FM3":"Famix-Java-Entities.Reference","id":113,"previous":{"ref":237},"referencer":{"ref":142},"referredType":{"ref":279}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":114,"element":{"ref":488},"endPos":3440,"fileName":"./src/hello\\Hello.java","startPos":3425},{"FM3":"Famix-Java-Entities.Reference","id":115,"previous":{"ref":113},"referencer":{"ref":527},"referredType":{"ref":90}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":116,"element":{"ref":571},"endPos":2109,"fileName":"./src/hello\\Hello.java","startPos":2099},{"FM3":"Famix-Java-Entities.LocalVariable","id":117,"name":"i","parentBehaviouralEntity":{"ref":478}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":118,"element":{"ref":44},"endPos":3302,"fileName":"./src/hello\\Hello.java","startPos":2719},{"FM3":"Famix-Java-Entities.Invocation","id":119,"candidates":[{"ref":612}],"previous":{"ref":614},"sender":{"ref":365},"signature":"_Anonymous(Carrefour.Oupsi)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":120,"element":{"ref":161},"endPos":5265,"fileName":"./src/hello\\Hello.java","startPos":5231},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":121,"element":{"ref":406},"endPos":3291,"fileName":"./src/hello\\Hello.java","startPos":2887},{"FM3":"Famix-Java-Entities.Invocation","id":122,"candidates":[{"ref":272}],"previous":{"ref":487},"receiver":{"ref":497},"sender":{"ref":623},"signature":"hide()"},{"FM3":"Famix-Java-Entities.Inheritance","id":123,"subclass":{"ref":637},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Parameter","id":124,"name":"extension","declaredType":{"ref":254},"parentBehaviouralEntity":{"ref":381}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":125,"element":{"ref":630},"endPos":4627,"fileName":"./src/hello\\Hello.java","startPos":4591},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":126,"element":{"ref":658},"endPos":1787,"fileName":"./src/hello\\Hello.java","startPos":1783},{"FM3":"Famix-Java-Entities.Method","id":127,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":250},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":128,"element":{"ref":474},"endPos":2976,"fileName":"./src/hello\\Hello.java","startPos":2955},{"FM3":"Famix-Java-Entities.Invocation","id":129,"candidates":[{"ref":101}],"receiver":{"ref":147},"sender":{"ref":186},"signature":"returnNumber(5)"},{"FM3":"Famix-Java-Entities.AnnotationType","id":130,"name":"Override","annotationTypesContainer":{"ref":405},"isStub":true},{"FM3":"Famix-Java-Entities.Access","id":131,"accessor":{"ref":61},"isWrite":true,"variable":{"ref":516}},{"FM3":"Famix-Java-Entities.Method","id":132,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":173},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":133,"name":"_Anonymous(ClickHandler)","isStub":true,"kind":"constructor","parentType":{"ref":599},"signature":"_Anonymous(ClickHandler)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":134,"subclass":{"ref":450},"superclass":{"ref":150}},{"FM3":"Famix-Java-Entities.Implementation","id":135,"implementingClass":{"ref":254},"interface":{"ref":575},"previous":{"ref":169}},{"FM3":"Famix-Java-Entities.Invocation","id":136,"candidates":[{"ref":210}],"previous":{"ref":461},"receiver":{"ref":178},"sender":{"ref":142},"signature":"put(\"4\",\"4\")"},{"FM3":"Famix-Java-Entities.Invocation","id":137,"candidates":[{"ref":629}],"sender":{"ref":527},"signature":"Hello()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":138,"element":{"ref":554},"endPos":3591,"fileName":"./src/hello\\Hello.java","startPos":3570},{"FM3":"Famix-Java-Entities.Invocation","id":139,"candidates":[{"ref":248}],"previous":{"ref":425},"sender":{"ref":186},"signature":"setWidget(new Button(\"I''am a Button\"){
  public void onClick(  final ClickEvent event){
    System.out.println(event + \" I''m calling \" + hello);
    Button innertButton=new Button();
  }
}
)"},{"FM3":"Famix-Java-Entities.Class","id":140,"name":"Label","isStub":true,"typeContainer":{"ref":478}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":141,"element":{"ref":142},"endPos":804,"fileName":"./src/hello\\Hello.java","startPos":759},{"FM3":"Famix-Java-Entities.Method","id":142,"name":"<Initializer>","cyclomaticComplexity":1,"numberOfStatements":7,"parentType":{"ref":90},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":143,"name":"confirmGroupRemoval","isStub":true,"parentType":{"ref":346},"signature":"confirmGroupRemoval()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":144,"element":{"ref":600},"endPos":1466,"fileName":"./src/hello\\Hello.java","startPos":1457},{"FM3":"Famix-Java-Entities.Class","id":145,"name":"BLLabel","isStub":true,"typeContainer":{"ref":549}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":146,"element":{"ref":623},"endPos":3235,"fileName":"./src/hello\\Hello.java","startPos":3040},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":147,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":186}},{"FM3":"Famix-Java-Entities.Reference","id":148,"previous":{"ref":230},"referencer":{"ref":334},"referredType":{"ref":90}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":149,"element":{"ref":136},"endPos":649,"fileName":"./src/hello\\Hello.java","startPos":632},{"FM3":"Famix-Java-Entities.Class","id":150,"name":"FilterOutputStream","isStub":true,"typeContainer":{"ref":515},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":151,"name":"externalMethod","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":90},"signature":"externalMethod()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":152,"element":{"ref":518},"endPos":2328,"fileName":"./src/hello\\Hello.java","startPos":2318},{"FM3":"Famix-Java-Entities.Reference","id":153,"previous":{"ref":554},"referencer":{"ref":659},"referredType":{"ref":595}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":154,"element":{"ref":524},"endPos":1272,"fileName":"./src/hello\\Hello.java","startPos":1263},{"FM3":"Famix-Java-Entities.Attribute","id":155,"name":"aString","declaredType":{"ref":254},"parentType":{"ref":156},"visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":156,"name":"MyClass","typeContainer":{"ref":297},"visibility":"public"},{"FM3":"Famix-Java-Entities.Access","id":157,"accessor":{"ref":49},"variable":{"ref":110}},{"FM3":"Famix-Java-Entities.Class","id":158,"name":"ImageButtonTreeUtils","isStub":true,"typeContainer":{"ref":381}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":159,"element":{"ref":156},"endPos":139,"fileName":"./src/hello\\MyClass.java","startPos":17},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":160,"element":{"ref":478},"endPos":2335,"fileName":"./src/hello\\Hello.java","startPos":2235},{"FM3":"Famix-Java-Entities.Reference","id":161,"previous":{"ref":310},"referencer":{"ref":24},"referredType":{"ref":29}},{"FM3":"Famix-Java-Entities.Invocation","id":162,"candidates":[{"ref":248}],"previous":{"ref":342},"sender":{"ref":549},"signature":"setWidget(new Button(){
  public void onClick(  final ClickEvent event){
    BLLabel label41=new BLLabel(\"inside \");
    new Button(){
      public void onClick(      final ClickEvent event){
        BLLabel label42=new BLLabel(\"inside inside\");
      }
    }
;
  }
}
)"},{"FM3":"Famix-Java-Entities.Invocation","id":163,"candidates":[{"ref":95}],"sender":{"ref":94},"signature":"String()"},{"FM3":"Famix-Java-Entities.Method","id":164,"name":"setCarrefour","isStub":true,"parentType":{"ref":346},"signature":"setCarrefour(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":165,"element":{"ref":460},"endPos":2504,"fileName":"./src/hello\\Hello.java","startPos":2495},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":166,"element":{"ref":299},"endPos":1506,"fileName":"./src/hello\\Hello.java","startPos":1502},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":167,"element":{"ref":49},"endPos":2015,"fileName":"./src/hello\\Hello.java","startPos":1939},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":168,"element":{"ref":119},"endPos":2532,"fileName":"./src/hello\\Hello.java","startPos":2417},{"FM3":"Famix-Java-Entities.Implementation","id":169,"implementingClass":{"ref":254},"interface":{"ref":394},"previous":{"ref":241}},{"FM3":"Famix-Java-Entities.Package","id":170,"name":"constant","isStub":true,"parentPackage":{"ref":405}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":171,"element":{"ref":33},"endPos":751,"fileName":"./src/hello\\Hello.java","startPos":740},{"FM3":"Famix-Java-Entities.Method","id":172,"name":"onInternalMethod","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":1,"parentType":{"ref":635},"signature":"onInternalMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":173,"name":"BLLabel","isStub":true,"typeContainer":{"ref":300}},{"FM3":"Famix-Java-Entities.AnnotationInstance","id":174,"annotatedEntity":{"ref":549},"annotationType":{"ref":130}},{"FM3":"Famix-Java-Entities.Class","id":175,"name":"_Anonymous(Carrefour)","typeContainer":{"ref":61},"visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":176,"candidates":[{"ref":337}],"receiver":{"ref":202},"sender":{"ref":104},"signature":"toString()"},{"FM3":"Famix-Java-Entities.Parameter","id":177,"name":"path","declaredType":{"ref":254},"parentBehaviouralEntity":{"ref":381}},{"FM3":"Famix-Java-Entities.Attribute","id":178,"name":"aMap","declaredType":{"ref":440},"isClassSide":true,"isFinal":true,"parentType":{"ref":90},"visibility":"private"},{"FM3":"Famix-Java-Entities.Method","id":179,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":400},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":180,"name":"c42","parentType":{"ref":90}},{"FM3":"Famix-Java-Entities.Class","id":181,"name":"System","isFinal":true,"isStub":true,"typeContainer":{"ref":405},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":182,"element":{"ref":180},"endPos":751,"fileName":"./src/hello\\Hello.java","startPos":734},{"FM3":"Famix-Java-Entities.Reference","id":183,"previous":{"ref":507},"referencer":{"ref":602},"referredType":{"ref":291}},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":184,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":629}},{"FM3":"Famix-Java-Entities.Implementation","id":185,"implementingClass":{"ref":450},"interface":{"ref":9},"previous":{"ref":633}},{"FM3":"Famix-Java-Entities.Method","id":186,"name":"test","cyclomaticComplexity":1,"declaredType":{"ref":271},"numberOfStatements":8,"parentType":{"ref":90},"signature":"test()","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":187,"candidates":[{"ref":654}],"previous":{"ref":246},"sender":{"ref":142},"signature":"Canard(aMap)"},{"FM3":"Famix-Java-Entities.Invocation","id":188,"candidates":[{"ref":232}],"previous":{"ref":352},"sender":{"ref":602},"signature":"show()"},{"FM3":"Famix-Java-Entities.Invocation","id":189,"candidates":[{"ref":285}],"previous":{"ref":378},"sender":{"ref":570},"signature":"Carrefour()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":190,"element":{"ref":83},"endPos":4798,"fileName":"./src/hello\\Hello.java","startPos":4751},{"FM3":"Famix-Java-Entities.Class","id":191,"name":"BLLabel","isStub":true,"typeContainer":{"ref":13}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":192,"element":{"ref":613},"endPos":2681,"fileName":"./src/hello\\Hello.java","startPos":2624},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":193,"element":{"ref":573},"endPos":3760,"fileName":"./src/hello\\Hello.java","startPos":3723},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":194,"element":{"ref":230},"endPos":1737,"fileName":"./src/hello\\Hello.java","startPos":1732},{"FM3":"Famix-Java-Entities.Inheritance","id":195,"subclass":{"ref":398},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Method","id":196,"name":"InnerAtt","isStub":true,"kind":"constructor","parentType":{"ref":393},"signature":"InnerAtt(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":197,"element":{"ref":396},"endPos":613,"fileName":"./src/hello\\Hello.java","startPos":610},{"FM3":"Famix-Java-Entities.Method","id":198,"name":"fieldAccess","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":90},"signature":"fieldAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.Inheritance","id":199,"subclass":{"ref":525},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Access","id":200,"accessor":{"ref":629},"isWrite":true,"variable":{"ref":23}},{"FM3":"Famix-Java-Entities.Method","id":201,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":191},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.LocalVariable","id":202,"name":"hello","declaredType":{"ref":254},"parentBehaviouralEntity":{"ref":104}},{"FM3":"Famix-Java-Entities.LocalVariable","id":203,"name":"someLocalVariableDefineInExternalScope","declaredType":{"ref":254},"parentBehaviouralEntity":{"ref":151}},{"FM3":"Famix-Java-Entities.Reference","id":204,"previous":{"ref":153},"referencer":{"ref":300},"referredType":{"ref":620}},{"FM3":"Famix-Java-Entities.Inheritance","id":205,"subclass":{"ref":346},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Class","id":206,"name":"Canard","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.Package","id":207,"name":"java","isStub":true},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":208,"element":{"ref":15},"endPos":373,"fileName":"./src/hello\\Hello.java","startPos":369},{"FM3":"Famix-Java-Entities.Invocation","id":209,"candidates":[{"ref":248}],"previous":{"ref":89},"sender":{"ref":186},"signature":"setWidget(new Button(\"I''am another Button\"){
  public void onClick(  final ClickEvent event){
    label=new String();
  }
}
)"},{"FM3":"Famix-Java-Entities.Method","id":210,"name":"put","declaredType":{"ref":39},"isAbstract":true,"isStub":true,"parentType":{"ref":519},"signature":"put(K,V)","visibility":"public"},{"FM3":"Famix-Java-Entities.Inheritance","id":211,"subclass":{"ref":477},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":212,"element":{"ref":178},"endPos":548,"fileName":"./src/hello\\Hello.java","startPos":513},{"FM3":"Famix-Java-Entities.LocalVariable","id":213,"name":"externalIdentifier","parentBehaviouralEntity":{"ref":482}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":214,"element":{"ref":20},"endPos":2008,"fileName":"./src/hello\\Hello.java","startPos":1984},{"FM3":"Famix-Java-Entities.Invocation","id":215,"candidates":[{"ref":133}],"previous":{"ref":651},"sender":{"ref":482},"signature":"_Anonymous(ClickHandler)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":216,"element":{"ref":365},"endPos":2540,"fileName":"./src/hello\\Hello.java","startPos":2342},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":217,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":434}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":218,"element":{"ref":465},"endPos":1574,"fileName":"./src/hello\\Hello.java","startPos":1395},{"FM3":"Famix-Java-Entities.Inheritance","id":219,"subclass":{"ref":394},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":220,"element":{"ref":471},"endPos":1250,"fileName":"./src/hello\\Hello.java","startPos":1246},{"FM3":"Famix-Java-Entities.Reference","id":221,"previous":{"ref":148},"referencer":{"ref":49},"referredType":{"ref":90}},{"FM3":"Famix-Java-Entities.Inheritance","id":222,"subclass":{"ref":436},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":223,"element":{"ref":591},"endPos":2297,"fileName":"./src/hello\\Hello.java","startPos":2287},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":224,"element":{"ref":599},"endPos":4827,"fileName":"./src/hello\\Hello.java","startPos":4685},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":225,"element":{"ref":401},"endPos":137,"fileName":"./src/hello\\MyClass.java","startPos":86},{"FM3":"Famix-Java-Entities.Inheritance","id":226,"subclass":{"ref":85},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.LocalVariable","id":227,"name":"oup","parentBehaviouralEntity":{"ref":570}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":228,"element":{"ref":437},"endPos":3407,"fileName":"./src/hello\\Hello.java","startPos":3390},{"FM3":"Famix-Java-Entities.ParameterizableInterface","id":229,"name":"Comparable","isStub":true,"typeContainer":{"ref":405},"visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":230,"previous":{"ref":636},"referencer":{"ref":559},"referredType":{"ref":254}},{"FM3":"Famix-Java-Entities.Invocation","id":231,"candidates":[{"ref":372}],"previous":{"ref":187},"sender":{"ref":142},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.Method","id":232,"name":"show","isStub":true,"parentType":{"ref":346},"signature":"show()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":233,"element":{"ref":139},"endPos":1585,"fileName":"./src/hello\\Hello.java","startPos":1340},{"FM3":"Famix-Java-Entities.Inheritance","id":234,"subclass":{"ref":349},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Invocation","id":235,"candidates":[{"ref":629}],"sender":{"ref":334},"signature":"Hello()"},{"FM3":"Famix-Java-Entities.Method","id":236,"name":"_Anonymous(QuicksearchExempleREL)","isStub":true,"kind":"constructor","parentType":{"ref":85},"signature":"_Anonymous(QuicksearchExempleREL)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Reference","id":237,"previous":{"ref":33},"referencer":{"ref":142},"referredType":{"ref":59}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":238,"endPos":675,"fileName":"./src/hello\\Hello.java","startPos":555},{"FM3":"Famix-Java-Entities.Class","id":239,"name":"Canard","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":240,"element":{"ref":477},"endPos":3302,"fileName":"./src/hello\\Hello.java","startPos":2830},{"FM3":"Famix-Java-Entities.Implementation","id":241,"implementingClass":{"ref":254},"interface":{"ref":35},"previous":{"ref":2}},{"FM3":"Famix-Java-Entities.Class","id":242,"name":"Canard","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":243,"element":{"ref":629},"endPos":979,"fileName":"./src/hello\\Hello.java","startPos":915},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":244,"element":{"ref":157},"endPos":2007,"fileName":"./src/hello\\Hello.java","startPos":1989},{"FM3":"Famix-Java-Entities.Invocation","id":245,"candidates":[{"ref":30}],"sender":{"ref":482},"signature":"Label(\"Boite de dialogue modale\")"},{"FM3":"Famix-Java-Entities.Invocation","id":246,"candidates":[{"ref":210}],"previous":{"ref":136},"receiver":{"ref":178},"sender":{"ref":142},"signature":"put(\"5\",\"5\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":247,"element":{"ref":543},"endPos":4862,"fileName":"./src/hello\\Hello.java","startPos":4858},{"FM3":"Famix-Java-Entities.Method","id":248,"name":"setWidget","isStub":true,"parentType":{"ref":346},"signature":"setWidget(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":249,"name":"hello","isStub":true,"parentType":{"ref":346},"signature":"hello(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":250,"name":"Canard","isStub":true,"typeContainer":{"ref":186}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":251,"element":{"ref":461},"endPos":627,"fileName":"./src/hello\\Hello.java","startPos":610},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":252,"element":{"ref":79},"endPos":1699,"fileName":"./src/hello\\Hello.java","startPos":1678},{"FM3":"Famix-Java-Entities.Type","id":253,"name":"Label","isStub":true,"typeContainer":{"ref":90}},{"FM3":"Famix-Java-Entities.Class","id":254,"name":"String","isFinal":true,"isStub":true,"typeContainer":{"ref":405},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":255,"name":"innerHelloMethod","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":426},"signature":"innerHelloMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":256,"candidates":[{"ref":95}],"sender":{"ref":559},"signature":"String()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":257,"element":{"ref":122},"endPos":3208,"fileName":"./src/hello\\Hello.java","startPos":3203},{"FM3":"Famix-Java-Entities.Reference","id":258,"previous":{"ref":604},"referencer":{"ref":623},"referredType":{"ref":130}},{"FM3":"Famix-Java-Entities.Access","id":259,"accessor":{"ref":142},"previous":{"ref":627},"variable":{"ref":178}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":260,"element":{"ref":246},"endPos":671,"fileName":"./src/hello\\Hello.java","startPos":654},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":261,"element":{"ref":378},"endPos":5161,"fileName":"./src/hello\\Hello.java","startPos":4984},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":262,"element":{"ref":155},"endPos":78,"fileName":"./src/hello\\MyClass.java","startPos":72},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":263,"element":{"ref":627},"endPos":635,"fileName":"./src/hello\\Hello.java","startPos":632},{"FM3":"Famix-Java-Entities.Access","id":264,"accessor":{"ref":142},"isWrite":true,"previous":{"ref":98},"variable":{"ref":545}},{"FM3":"Famix-Java-Entities.Method","id":265,"name":"addClickHandler","isStub":true,"parentType":{"ref":346},"signature":"addClickHandler(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":266,"element":{"ref":635},"endPos":4499,"fileName":"./src/hello\\Hello.java","startPos":4332},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":267,"element":{"ref":203},"endPos":4281,"fileName":"./src/hello\\Hello.java","startPos":4234},{"FM3":"Famix-Java-Entities.Package","id":268,"name":"<Default Package>","isStub":true},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":269,"element":{"ref":93},"endPos":1830,"fileName":"./src/hello\\Hello.java","startPos":1826},{"FM3":"Famix-Java-Entities.Parameter","id":270,"name":"bb","parentBehaviouralEntity":{"ref":657}},{"FM3":"Famix-Java-Entities.PrimitiveType","id":271,"name":"int","isStub":true},{"FM3":"Famix-Java-Entities.Method","id":272,"name":"hide","isStub":true,"parentType":{"ref":346},"signature":"hide()","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":273,"name":"Label","isStub":true,"typeContainer":{"ref":482}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":274,"element":{"ref":189},"endPos":4998,"fileName":"./src/hello\\Hello.java","startPos":4984},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":275,"element":{"ref":58},"endPos":719,"fileName":"./src/hello\\Hello.java","startPos":704},{"FM3":"Famix-Java-Entities.Inheritance","id":276,"subclass":{"ref":294},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Class","id":277,"name":"HashMap","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.Inheritance","id":278,"subclass":{"ref":464},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Class","id":279,"name":"Canard","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":280,"element":{"ref":398},"endPos":1584,"fileName":"./src/hello\\Hello.java","startPos":1380},{"FM3":"Famix-Java-Entities.Class","id":281,"name":"InnerAtt","isStub":true,"typeContainer":{"ref":24}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":282,"element":{"ref":176},"endPos":2221,"fileName":"./src/hello\\Hello.java","startPos":2203},{"FM3":"Famix-Java-Entities.Class","id":283,"name":"BLLabel","isStub":true,"typeContainer":{"ref":549}},{"FM3":"Famix-Java-Entities.Access","id":284,"accessor":{"ref":186},"previous":{"ref":524},"variable":{"ref":23}},{"FM3":"Famix-Java-Entities.Method","id":285,"name":"Carrefour","isStub":true,"kind":"constructor","parentType":{"ref":568},"signature":"Carrefour()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":286,"subclass":{"ref":229},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Inheritance","id":287,"subclass":{"ref":150},"superclass":{"ref":611}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":288,"element":{"ref":397},"endPos":2110,"fileName":"./src/hello\\Hello.java","startPos":2093},{"FM3":"Famix-Java-Entities.Type","id":289,"name":"Canard","isStub":true,"typeContainer":{"ref":90}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":290,"element":{"ref":602},"endPos":4823,"fileName":"./src/hello\\Hello.java","startPos":4690},{"FM3":"Famix-Java-Entities.Class","id":291,"name":"Box","isStub":true,"typeContainer":{"ref":602}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":292,"element":{"ref":549},"endPos":3834,"fileName":"./src/hello\\Hello.java","startPos":3317},{"FM3":"Famix-Java-Entities.Reference","id":293,"previous":{"ref":55},"referencer":{"ref":478},"referredType":{"ref":503}},{"FM3":"Famix-Java-Entities.Class","id":294,"name":"MySuperClass","typeContainer":{"ref":297},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":295,"element":{"ref":96},"endPos":4076,"fileName":"./src/hello\\Hello.java","startPos":4059},{"FM3":"Famix-Java-Entities.Attribute","id":296,"name":"aString","declaredType":{"ref":254},"parentType":{"ref":294},"visibility":"package"},{"FM3":"Famix-Java-Entities.Package","id":297,"name":"hello"},{"FM3":"Famix-Java-Entities.Method","id":298,"name":"BLFieldSetPanel","isStub":true,"kind":"constructor","parentType":{"ref":592},"signature":"BLFieldSetPanel(?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":299,"accessor":{"ref":465},"previous":{"ref":600},"variable":{"ref":15}},{"FM3":"Famix-Java-Entities.Method","id":300,"name":"multiLineNew","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":90},"signature":"multiLineNew()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":301,"element":{"ref":264},"endPos":780,"fileName":"./src/hello\\Hello.java","startPos":776},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":302,"element":{"ref":467},"endPos":2081,"fileName":"./src/hello\\Hello.java","startPos":2064},{"FM3":"Famix-Java-Entities.Reference","id":303,"previous":{"ref":258},"referencer":{"ref":623},"referredType":{"ref":130}},{"FM3":"Famix-Java-Entities.Invocation","id":304,"candidates":[{"ref":143}],"previous":{"ref":563},"sender":{"ref":381},"signature":"confirmGroupRemoval()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":305,"element":{"ref":402},"endPos":460,"fileName":"./src/hello\\Hello.java","startPos":444},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":306,"element":{"ref":323},"endPos":516,"fileName":"./src/hello\\Hello.java","startPos":513},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":307,"element":{"ref":300},"endPos":3912,"fileName":"./src/hello\\Hello.java","startPos":3841},{"FM3":"Famix-Java-Entities.LocalVariable","id":308,"name":"innertButton","parentBehaviouralEntity":{"ref":465}},{"FM3":"Famix-Java-Entities.Reference","id":309,"previous":{"ref":427},"referencer":{"ref":142},"referredType":{"ref":622}},{"FM3":"Famix-Java-Entities.Reference","id":310,"previous":{"ref":48},"referencer":{"ref":24},"referredType":{"ref":281}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":311,"element":{"ref":103},"endPos":109,"fileName":"./src/hello\\MyInterface.java","startPos":17},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":312,"element":{"ref":245},"endPos":4627,"fileName":"./src/hello\\Hello.java","startPos":4591},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":313,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":49}},{"FM3":"Famix-Java-Entities.Invocation","id":314,"candidates":[{"ref":577}],"sender":{"ref":657},"signature":"println(\"Hello stupid code\")"},{"FM3":"Famix-Java-Entities.Type","id":315,"name":"QuicksearchExempleREL","isStub":true,"typeContainer":{"ref":477}},{"FM3":"Famix-Java-Entities.Class","id":316,"name":"Label","isStub":true,"typeContainer":{"ref":482}},{"FM3":"Famix-Java-Entities.Method","id":317,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":140},"signature":"Label()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":318,"element":{"ref":342},"endPos":3440,"fileName":"./src/hello\\Hello.java","startPos":3429},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":319,"element":{"ref":105},"endPos":2461,"fileName":"./src/hello\\Hello.java","startPos":2454},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":320,"element":{"ref":259},"endPos":657,"fileName":"./src/hello\\Hello.java","startPos":654},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":321,"element":{"ref":202},"endPos":2192,"fileName":"./src/hello\\Hello.java","startPos":2163},{"FM3":"Famix-Java-Entities.Class","id":322,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":526}},{"FM3":"Famix-Java-Entities.Access","id":323,"accessor":{"ref":142},"isWrite":true,"variable":{"ref":178}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":324,"element":{"ref":628},"endPos":3591,"fileName":"./src/hello\\Hello.java","startPos":3570},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":325,"element":{"ref":504},"endPos":3801,"fileName":"./src/hello\\Hello.java","startPos":3610},{"FM3":"Famix-Java-Entities.Invocation","id":326,"candidates":[{"ref":132}],"sender":{"ref":300},"signature":"BLLabel(\"\")"},{"FM3":"Famix-Java-Entities.LocalVariable","id":327,"name":"label41","parentBehaviouralEntity":{"ref":13}},{"FM3":"Famix-Java-Entities.Attribute","id":328,"name":"complexCanard","parentType":{"ref":90}},{"FM3":"Famix-Java-Entities.Method","id":329,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":103},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":330,"accessor":{"ref":329},"isWrite":true,"variable":{"ref":566}},{"FM3":"Famix-Java-Entities.Parameter","id":331,"name":"event","parentBehaviouralEntity":{"ref":465}},{"FM3":"Famix-Java-Entities.Inheritance","id":332,"subclass":{"ref":611},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Parameter","id":333,"name":"event","parentBehaviouralEntity":{"ref":172}},{"FM3":"Famix-Java-Entities.Method","id":334,"name":"longNew","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":1,"parentType":{"ref":90},"signature":"longNew()","visibility":"private"},{"FM3":"Famix-Java-Entities.Inheritance","id":335,"subclass":{"ref":106},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Class","id":336,"name":"BLLabel","isStub":true,"typeContainer":{"ref":659}},{"FM3":"Famix-Java-Entities.Method","id":337,"name":"toString","declaredType":{"ref":254},"isStub":true,"parentType":{"ref":254},"signature":"toString()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":338,"element":{"ref":582},"endPos":4173,"fileName":"./src/hello\\Hello.java","startPos":4059},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":339,"element":{"ref":209},"endPos":1765,"fileName":"./src/hello\\Hello.java","startPos":1597},{"FM3":"Famix-Java-Entities.Method","id":340,"name":"_Anonymous(BLAbstractLienSimple)","isStub":true,"kind":"constructor","parentType":{"ref":477},"signature":"_Anonymous(BLAbstractLienSimple)(?,?,?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Interface","id":341,"name":"Serializable","isStub":true,"typeContainer":{"ref":515},"visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":342,"candidates":[{"ref":179}],"previous":{"ref":443},"sender":{"ref":549},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":343,"element":{"ref":284},"endPos":1287,"fileName":"./src/hello\\Hello.java","startPos":1282},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":344,"element":{"ref":85},"endPos":3291,"fileName":"./src/hello\\Hello.java","startPos":2915},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":345,"element":{"ref":427},"endPos":548,"fileName":"./src/hello\\Hello.java","startPos":520},{"FM3":"Famix-Java-Entities.Class","id":346,"name":"<StubMethodContainer>","isStub":true,"typeContainer":{"ref":268}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":347,"element":{"ref":23},"endPos":358,"fileName":"./src/hello\\Hello.java","startPos":353},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":348,"element":{"ref":426},"endPos":5373,"fileName":"./src/hello\\Hello.java","startPos":5175},{"FM3":"Famix-Java-Entities.Interface","id":349,"name":"Appendable","isStub":true,"typeContainer":{"ref":405},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":350,"element":{"ref":455},"endPos":1296,"fileName":"./src/hello\\Hello.java","startPos":1263},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":351,"element":{"ref":117},"endPos":2297,"fileName":"./src/hello\\Hello.java","startPos":2283},{"FM3":"Famix-Java-Entities.Invocation","id":352,"candidates":[{"ref":567}],"previous":{"ref":456},"sender":{"ref":602},"signature":"getText()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":353,"element":{"ref":309},"endPos":719,"fileName":"./src/hello\\Hello.java","startPos":704},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":354,"element":{"ref":148},"endPos":1925,"fileName":"./src/hello\\Hello.java","startPos":1909},{"FM3":"Famix-Java-Entities.Invocation","id":355,"candidates":[{"ref":572}],"previous":{"ref":209},"sender":{"ref":186},"signature":"_Anonymous(Button)(\"I''am another Button\")"},{"FM3":"Famix-Java-Entities.Method","id":356,"name":"call","isStub":true,"parentType":{"ref":346},"signature":"call(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":357,"candidates":[{"ref":210}],"previous":{"ref":57},"receiver":{"ref":178},"sender":{"ref":142},"signature":"put(\"1\",\"1\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":358,"element":{"ref":621},"endPos":569,"fileName":"./src/hello\\Hello.java","startPos":566},{"FM3":"Famix-Java-Entities.Class","id":359,"name":"Canard","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":360,"element":{"ref":81},"endPos":1329,"fileName":"./src/hello\\Hello.java","startPos":1318},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":361,"element":{"ref":131},"endPos":1043,"fileName":"./src/hello\\Hello.java","startPos":1033},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":362,"element":{"ref":75},"endPos":3257,"fileName":"./src/hello\\Hello.java","startPos":2994},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":363,"element":{"ref":456},"endPos":4798,"fileName":"./src/hello\\Hello.java","startPos":4756},{"FM3":"Famix-Java-Entities.Class","id":364,"name":"Canard","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.Method","id":365,"name":"newAnonymousOfInnerClass","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":1,"parentType":{"ref":90},"signature":"newAnonymousOfInnerClass()","visibility":"private"},{"FM3":"Famix-Java-Entities.Class","id":366,"name":"Canard","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":367,"element":{"ref":352},"endPos":4791,"fileName":"./src/hello\\Hello.java","startPos":4764},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":368,"element":{"ref":41},"endPos":3302,"fileName":"./src/hello\\Hello.java","startPos":2732},{"FM3":"Famix-Java-Entities.Method","id":369,"name":"<Initializer>","cyclomaticComplexity":1,"numberOfStatements":1,"parentType":{"ref":85},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.Parameter","id":370,"name":"fileName","declaredType":{"ref":254},"parentBehaviouralEntity":{"ref":381}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":371,"element":{"ref":637},"endPos":5161,"fileName":"./src/hello\\Hello.java","startPos":5012},{"FM3":"Famix-Java-Entities.Method","id":372,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":239},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":373,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":198}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":374,"element":{"ref":660},"endPos":2328,"fileName":"./src/hello\\Hello.java","startPos":2314},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":375,"element":{"ref":57},"endPos":548,"fileName":"./src/hello\\Hello.java","startPos":520},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":376,"element":{"ref":88},"endPos":119,"fileName":"./src/hello\\MySuperClass.java","startPos":108},{"FM3":"Famix-Java-Entities.Method","id":377,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":525},"signature":"_Anonymous(Button)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":378,"candidates":[{"ref":22}],"sender":{"ref":570},"signature":"_Anonymous(Oupsi)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":379,"element":{"ref":163},"endPos":119,"fileName":"./src/hello\\MySuperClass.java","startPos":108},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":380,"element":{"ref":215},"endPos":4827,"fileName":"./src/hello\\Hello.java","startPos":4667},{"FM3":"Famix-Java-Entities.Method","id":381,"name":"getMenuIcon","cyclomaticComplexity":1,"declaredType":{"ref":100},"isClassSide":true,"numberOfStatements":1,"parentType":{"ref":90},"signature":"getMenuIcon()","visibility":"private"},{"FM3":"Famix-Java-Entities.Inheritance","id":382,"subclass":{"ref":426},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":383,"element":{"ref":101},"endPos":1857,"fileName":"./src/hello\\Hello.java","startPos":1801},{"FM3":"Famix-Java-Entities.Invocation","id":384,"candidates":[{"ref":186}],"receiver":{"ref":184},"sender":{"ref":629},"signature":"test()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":385,"element":{"ref":106},"endPos":3826,"fileName":"./src/hello\\Hello.java","startPos":3476},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":386,"element":{"ref":256},"endPos":1739,"fileName":"./src/hello\\Hello.java","startPos":1728},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":387,"element":{"ref":293},"endPos":2328,"fileName":"./src/hello\\Hello.java","startPos":2318},{"FM3":"Famix-Java-Entities.Reference","id":388,"previous":{"ref":437},"referencer":{"ref":549},"referredType":{"ref":428}},{"FM3":"Famix-Java-Entities.Method","id":389,"name":"getInstance","isStub":true,"parentType":{"ref":346},"signature":"getInstance()","visibility":"package"},{"FM3":"Famix-Java-Entities.Reference","id":390,"previous":{"ref":58},"referencer":{"ref":142},"referredType":{"ref":206}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":391,"element":{"ref":608},"endPos":4422,"fileName":"./src/hello\\Hello.java","startPos":4417},{"FM3":"Famix-Java-Entities.Class","id":392,"name":"Box","isStub":true,"typeContainer":{"ref":602}},{"FM3":"Famix-Java-Entities.Class","id":393,"name":"InnerAtt","isStub":true,"typeContainer":{"ref":24}},{"FM3":"Famix-Java-Entities.Interface","id":394,"name":"CharSequence","isStub":true,"typeContainer":{"ref":405},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":395,"element":{"ref":624},"endPos":548,"fileName":"./src/hello\\Hello.java","startPos":520},{"FM3":"Famix-Java-Entities.Access","id":396,"accessor":{"ref":142},"previous":{"ref":8},"variable":{"ref":178}},{"FM3":"Famix-Java-Entities.Invocation","id":397,"candidates":[{"ref":528}],"previous":{"ref":511},"receiver":{"ref":373},"sender":{"ref":198},"signature":"call2(this.patate)"},{"FM3":"Famix-Java-Entities.Class","id":398,"name":"_Anonymous(Button)","typeContainer":{"ref":186},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":399,"element":{"ref":13},"endPos":3816,"fileName":"./src/hello\\Hello.java","startPos":3490},{"FM3":"Famix-Java-Entities.Class","id":400,"name":"Canard","isStub":true,"typeContainer":{"ref":549}},{"FM3":"Famix-Java-Entities.Method","id":401,"name":"build","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":156},"signature":"build()","visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":402,"name":"externalAttribute","declaredType":{"ref":254},"parentType":{"ref":90},"visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":403,"element":{"ref":555},"endPos":834,"fileName":"./src/hello\\Hello.java","startPos":823},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":404,"element":{"ref":659},"endPos":3783,"fileName":"./src/hello\\Hello.java","startPos":3645},{"FM3":"Famix-Java-Entities.Package","id":405,"name":"lang","isStub":true,"parentPackage":{"ref":207}},{"FM3":"Famix-Java-Entities.Invocation","id":406,"candidates":[{"ref":236}],"previous":{"ref":41},"sender":{"ref":80},"signature":"_Anonymous(QuicksearchExempleREL)()"},{"FM3":"Famix-Java-Entities.Invocation","id":407,"candidates":[{"ref":249}],"receiver":{"ref":217},"sender":{"ref":434},"signature":"hello(i)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":408,"element":{"ref":492},"endPos":1043,"fileName":"./src/hello\\Hello.java","startPos":1033},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":409,"element":{"ref":89},"endPos":1559,"fileName":"./src/hello\\Hello.java","startPos":1548},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":410,"element":{"ref":566},"endPos":105,"fileName":"./src/hello\\MyInterface.java","startPos":79},{"FM3":"Famix-Java-Entities.Parameter","id":411,"name":"args","declaredType":{"ref":254},"parentBehaviouralEntity":{"ref":527}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":412,"element":{"ref":525},"endPos":3801,"fileName":"./src/hello\\Hello.java","startPos":3623},{"FM3":"Famix-Java-Entities.Parameter","id":413,"name":"action","declaredType":{"ref":271},"parentBehaviouralEntity":{"ref":381}},{"FM3":"Famix-Java-Entities.Reference","id":414,"previous":{"ref":444},"referencer":{"ref":465},"referredType":{"ref":438}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":415,"element":{"ref":175},"endPos":1171,"fileName":"./src/hello\\Hello.java","startPos":1100},{"FM3":"Famix-Java-Entities.Type","id":416,"name":"Carrefour","isStub":true,"typeContainer":{"ref":90}},{"FM3":"Famix-Java-Entities.Invocation","id":417,"candidates":[{"ref":597}],"sender":{"ref":659},"signature":"BLLabel(\"inside inside\")"},{"FM3":"Famix-Java-Entities.SourceLanguage","id":418,},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":419,"element":{"ref":38},"endPos":3407,"fileName":"./src/hello\\Hello.java","startPos":3382},{"FM3":"Famix-Java-Entities.Method","id":420,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":283},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":421,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":635},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":422,"element":{"ref":384},"endPos":972,"fileName":"./src/hello\\Hello.java","startPos":967},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":423,"element":{"ref":436},"endPos":2532,"fileName":"./src/hello\\Hello.java","startPos":2439},{"FM3":"Famix-Java-Entities.Access","id":424,"accessor":{"ref":186},"isWrite":true,"variable":{"ref":15}},{"FM3":"Famix-Java-Entities.Invocation","id":425,"candidates":[{"ref":127}],"previous":{"ref":455},"sender":{"ref":186},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.Class","id":426,"name":"InnerHello","typeContainer":{"ref":90},"visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":427,"previous":{"ref":624},"referencer":{"ref":142},"referredType":{"ref":601}},{"FM3":"Famix-Java-Entities.Class","id":428,"name":"Canard","isStub":true,"typeContainer":{"ref":549}},{"FM3":"Famix-Java-Entities.Implementation","id":429,"implementingClass":{"ref":611},"interface":{"ref":9},"previous":{"ref":332}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":430,"element":{"ref":355},"endPos":1764,"fileName":"./src/hello\\Hello.java","startPos":1609},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":431,"element":{"ref":407},"endPos":4881,"fileName":"./src/hello\\Hello.java","startPos":4874},{"FM3":"Famix-Java-Entities.Class","id":432,"name":"Button","isStub":true,"typeContainer":{"ref":465}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":433,"element":{"ref":495},"endPos":4173,"fileName":"./src/hello\\Hello.java","startPos":4059},{"FM3":"Famix-Java-Entities.Method","id":434,"name":"decla","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":1,"parentType":{"ref":90},"signature":"decla(int)","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":435,"element":{"ref":308},"endPos":1559,"fileName":"./src/hello\\Hello.java","startPos":1533},{"FM3":"Famix-Java-Entities.Class","id":436,"name":"_Anonymous(Carrefour.Oupsi)","typeContainer":{"ref":365},"visibility":"package"},{"FM3":"Famix-Java-Entities.Reference","id":437,"previous":{"ref":303},"referencer":{"ref":549},"referredType":{"ref":145}},{"FM3":"Famix-Java-Entities.Class","id":438,"name":"Button","isStub":true,"typeContainer":{"ref":465}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":439,"element":{"ref":99},"endPos":1724,"fileName":"./src/hello\\Hello.java","startPos":1720},{"FM3":"Famix-Java-Entities.ParameterizedType","id":440,"name":"Map","arguments":[{"ref":254}],"isStub":true,"parameterizableClass":{"ref":519},"typeContainer":{"ref":508}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":441,"element":{"ref":370},"endPos":4015,"fileName":"./src/hello\\Hello.java","startPos":3995},{"FM3":"Famix-Java-Entities.Type","id":442,"name":"BLLabel","isStub":true,"typeContainer":{"ref":90}},{"FM3":"Famix-Java-Entities.Invocation","id":443,"candidates":[{"ref":420}],"sender":{"ref":549},"signature":"BLLabel(\"out\")"},{"FM3":"Famix-Java-Entities.Reference","id":444,"previous":{"ref":81},"referencer":{"ref":465},"referredType":{"ref":181}},{"FM3":"Famix-Java-Entities.Inheritance","id":445,"subclass":{"ref":254},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":446,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":369}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":447,"element":{"ref":522},"endPos":4474,"fileName":"./src/hello\\Hello.java","startPos":4417},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":448,"element":{"ref":94},"endPos":126,"fileName":"./src/hello\\MySuperClass.java","startPos":75},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":449,"element":{"ref":586},"endPos":1080,"fileName":"./src/hello\\Hello.java","startPos":1070},{"FM3":"Famix-Java-Entities.Class","id":450,"name":"PrintStream","isStub":true,"typeContainer":{"ref":515},"visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":451,"name":"BLLabel","isStub":true,"typeContainer":{"ref":13}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":452,"element":{"ref":559},"endPos":1754,"fileName":"./src/hello\\Hello.java","startPos":1658},{"FM3":"Famix-Java-Entities.Type","id":453,"name":"Box","isStub":true,"typeContainer":{"ref":599}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":454,"element":{"ref":37},"endPos":3291,"fileName":"./src/hello\\Hello.java","startPos":2881},{"FM3":"Famix-Java-Entities.Invocation","id":455,"candidates":[{"ref":47}],"previous":{"ref":129},"receiver":{"ref":54},"sender":{"ref":186},"signature":"println(patate + hello)"},{"FM3":"Famix-Java-Entities.Invocation","id":456,"candidates":[{"ref":617}],"sender":{"ref":602},"signature":"Box(externalIdentifier.getText(),true)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":457,"element":{"ref":369},"endPos":3277,"fileName":"./src/hello\\Hello.java","startPos":2933},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":458,"element":{"ref":434},"endPos":4888,"fileName":"./src/hello\\Hello.java","startPos":4839},{"FM3":"Famix-Java-Entities.Inheritance","id":459,"subclass":{"ref":90},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Parameter","id":460,"name":"bb","declaredType":{"ref":11},"parentBehaviouralEntity":{"ref":506}},{"FM3":"Famix-Java-Entities.Invocation","id":461,"candidates":[{"ref":210}],"previous":{"ref":62},"receiver":{"ref":178},"sender":{"ref":142},"signature":"put(\"3\",\"3\")"},{"FM3":"Famix-Java-Entities.Implementation","id":462,"implementingClass":{"ref":254},"interface":{"ref":45},"previous":{"ref":135}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":463,"element":{"ref":255},"endPos":5367,"fileName":"./src/hello\\Hello.java","startPos":5285},{"FM3":"Famix-Java-Entities.Interface","id":464,"name":"Flushable","isStub":true,"typeContainer":{"ref":515},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":465,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":398},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Parameter","id":466,"name":"event","parentBehaviouralEntity":{"ref":623}},{"FM3":"Famix-Java-Entities.Access","id":467,"accessor":{"ref":198},"variable":{"ref":373}},{"FM3":"Famix-Java-Entities.Inheritance","id":468,"subclass":{"ref":599},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":469,"element":{"ref":177},"endPos":3992,"fileName":"./src/hello\\Hello.java","startPos":3976},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":470,"element":{"ref":542},"endPos":104,"fileName":"./src/hello\\MySuperClass.java","startPos":98},{"FM3":"Famix-Java-Entities.Access","id":471,"accessor":{"ref":186},"previous":{"ref":424},"variable":{"ref":15}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":472,"element":{"ref":48},"endPos":4998,"fileName":"./src/hello\\Hello.java","startPos":4984},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":473,"element":{"ref":102},"endPos":2081,"fileName":"./src/hello\\Hello.java","startPos":2064},{"FM3":"Famix-Java-Entities.Access","id":474,"accessor":{"ref":369},"variable":{"ref":446}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":475,"element":{"ref":198},"endPos":2117,"fileName":"./src/hello\\Hello.java","startPos":2022},{"FM3":"Famix-Java-Entities.Attribute","id":476,"name":"_InnerAtt","parentType":{"ref":426}},{"FM3":"Famix-Java-Entities.Class","id":477,"name":"_Anonymous(BLAbstractLienSimple)","typeContainer":{"ref":526},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":478,"name":"doubleAffectation","cyclomaticComplexity":1,"declaredType":{"ref":271},"numberOfStatements":2,"parentType":{"ref":90},"signature":"doubleAffectation()","visibility":"private"},{"FM3":"Famix-Java-Entities.Attribute","id":479,"name":"c7","parentType":{"ref":90}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":480,"element":{"ref":303},"endPos":3048,"fileName":"./src/hello\\Hello.java","startPos":3041},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":481,"element":{"ref":424},"endPos":1217,"fileName":"./src/hello\\Hello.java","startPos":1213},{"FM3":"Famix-Java-Entities.Method","id":482,"name":"externalIdentifierMethod","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":90},"signature":"externalIdentifierMethod()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":483,"element":{"ref":221},"endPos":1993,"fileName":"./src/hello\\Hello.java","startPos":1989},{"FM3":"Famix-Java-Entities.Class","id":484,"name":"Carrefour","isStub":true,"typeContainer":{"ref":570}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":485,"element":{"ref":124},"endPos":4039,"fileName":"./src/hello\\Hello.java","startPos":4018},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":486,"element":{"ref":619},"endPos":5346,"fileName":"./src/hello\\Hello.java","startPos":5330},{"FM3":"Famix-Java-Entities.Invocation","id":487,"candidates":[{"ref":538}],"receiver":{"ref":497},"sender":{"ref":623},"signature":"setValue(\"chosen by rel\")"},{"FM3":"Famix-Java-Entities.LocalVariable","id":488,"name":"c","parentBehaviouralEntity":{"ref":549}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":489,"element":{"ref":466},"endPos":3115,"fileName":"./src/hello\\Hello.java","startPos":3094},{"FM3":"Famix-Java-Entities.Access","id":490,"accessor":{"ref":198},"previous":{"ref":102},"variable":{"ref":373}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":491,"element":{"ref":90},"endPos":5376,"fileName":"./src/hello\\Hello.java","startPos":291},{"FM3":"Famix-Java-Entities.Access","id":492,"accessor":{"ref":61},"isWrite":true,"previous":{"ref":131},"variable":{"ref":23}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":493,"element":{"ref":213},"endPos":4627,"fileName":"./src/hello\\Hello.java","startPos":4570},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":494,"element":{"ref":490},"endPos":2109,"fileName":"./src/hello\\Hello.java","startPos":2099},{"FM3":"Famix-Java-Entities.Invocation","id":495,"candidates":[{"ref":4}],"sender":{"ref":381},"signature":"ImageButtonTreeUtils(i18n.confirmGroupRemoval(),path,fileName,i18n.confirmGroupRemoval())"},{"FM3":"Famix-Java-Entities.Parameter","id":496,"name":"bb","declaredType":{"ref":11},"parentBehaviouralEntity":{"ref":546}},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":497,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":623}},{"FM3":"Famix-Java-Entities.Class","id":498,"name":"ImageButtonTreeUtils","isStub":true,"typeContainer":{"ref":381}},{"FM3":"Famix-Java-Entities.Invocation","id":499,"candidates":[{"ref":661}],"sender":{"ref":61},"signature":"_Anonymous(Carrefour)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":500,"element":{"ref":50},"endPos":421,"fileName":"./src/hello\\Hello.java","startPos":416},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":501,"element":{"ref":129},"endPos":1235,"fileName":"./src/hello\\Hello.java","startPos":1221},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":502,"element":{"ref":334},"endPos":1932,"fileName":"./src/hello\\Hello.java","startPos":1864},{"FM3":"Famix-Java-Entities.Class","id":503,"name":"Label","isStub":true,"typeContainer":{"ref":478}},{"FM3":"Famix-Java-Entities.Invocation","id":504,"candidates":[{"ref":377}],"previous":{"ref":628},"sender":{"ref":13},"signature":"_Anonymous(Button)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":505,"element":{"ref":527},"endPos":908,"fileName":"./src/hello\\Hello.java","startPos":842},{"FM3":"Famix-Java-Entities.Method","id":506,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":0,"parentType":{"ref":436},"signature":"execute(boolean)","visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":507,"previous":{"ref":630},"referencer":{"ref":602},"referredType":{"ref":130}},{"FM3":"Famix-Java-Entities.Package","id":508,"name":"util","isStub":true,"parentPackage":{"ref":207}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":509,"element":{"ref":31},"endPos":130,"fileName":"./src/hello\\MyClass.java","startPos":119},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":510,"element":{"ref":390},"endPos":751,"fileName":"./src/hello\\Hello.java","startPos":740},{"FM3":"Famix-Java-Entities.Invocation","id":511,"candidates":[{"ref":356}],"receiver":{"ref":373},"sender":{"ref":198},"signature":"call(this.classProperty)"},{"FM3":"Famix-Java-Entities.Method","id":512,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":359},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":513,"element":{"ref":237},"endPos":834,"fileName":"./src/hello\\Hello.java","startPos":823},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":514,"element":{"ref":204},"endPos":3905,"fileName":"./src/hello\\Hello.java","startPos":3891},{"FM3":"Famix-Java-Entities.Package","id":515,"name":"io","isStub":true,"parentPackage":{"ref":207}},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":516,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":61}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":517,"element":{"ref":381},"endPos":4180,"fileName":"./src/hello\\Hello.java","startPos":3919},{"FM3":"Famix-Java-Entities.Invocation","id":518,"candidates":[{"ref":541}],"previous":{"ref":591},"sender":{"ref":478},"signature":"Label()"},{"FM3":"Famix-Java-Entities.ParameterizableInterface","id":519,"name":"Map","isStub":true,"typeContainer":{"ref":508},"visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":520,"name":"Canard","isStub":true,"typeContainer":{"ref":186}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":521,"element":{"ref":636},"endPos":1739,"fileName":"./src/hello\\Hello.java","startPos":1728},{"FM3":"Famix-Java-Entities.Invocation","id":522,"candidates":[{"ref":47}],"receiver":{"ref":54},"sender":{"ref":172},"signature":"println(someLocalVariableDefineInExternalScope)"},{"FM3":"Famix-Java-Entities.LocalVariable","id":523,"name":"c","parentBehaviouralEntity":{"ref":186}},{"FM3":"Famix-Java-Entities.Access","id":524,"accessor":{"ref":186},"previous":{"ref":471},"variable":{"ref":54}},{"FM3":"Famix-Java-Entities.Class","id":525,"name":"_Anonymous(Button)","typeContainer":{"ref":13},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":526,"name":"buildLienSimple","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":90},"signature":"buildLienSimple()","visibility":"private"},{"FM3":"Famix-Java-Entities.Method","id":527,"name":"main","cyclomaticComplexity":1,"declaredType":{"ref":634},"isClassSide":true,"numberOfStatements":1,"parentType":{"ref":90},"signature":"main(String[])","visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":528,"name":"call2","isStub":true,"parentType":{"ref":346},"signature":"call2(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":529,"element":{"ref":327},"endPos":3591,"fileName":"./src/hello\\Hello.java","startPos":3560},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":530,"element":{"ref":258},"endPos":3048,"fileName":"./src/hello\\Hello.java","startPos":3041},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":531,"element":{"ref":643},"endPos":3258,"fileName":"./src/hello\\Hello.java","startPos":2955},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":532,"element":{"ref":5},"endPos":3531,"fileName":"./src/hello\\Hello.java","startPos":3510},{"FM3":"Famix-Java-Entities.Class","id":533,"name":"Object","isStub":true,"typeContainer":{"ref":405}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":534,"element":{"ref":333},"endPos":4396,"fileName":"./src/hello\\Hello.java","startPos":4375},{"FM3":"Famix-Java-Entities.Invocation","id":535,"candidates":[{"ref":70}],"receiver":{"ref":54},"sender":{"ref":465},"signature":"println(event + \" I''m calling \" + hello)"},{"FM3":"Famix-Java-Entities.Type","id":536,"name":"Oupsi","isStub":true,"typeContainer":{"ref":90}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":537,"element":{"ref":614},"endPos":2533,"fileName":"./src/hello\\Hello.java","startPos":2392},{"FM3":"Famix-Java-Entities.Method","id":538,"name":"setValue","isStub":true,"parentType":{"ref":346},"signature":"setValue(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":539,"element":{"ref":294},"endPos":129,"fileName":"./src/hello\\MySuperClass.java","startPos":17},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":540,"element":{"ref":110},"endPos":339,"fileName":"./src/hello\\Hello.java","startPos":327},{"FM3":"Famix-Java-Entities.Method","id":541,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":640},"signature":"Label()","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":542,"accessor":{"ref":94},"isWrite":true,"variable":{"ref":296}},{"FM3":"Famix-Java-Entities.Parameter","id":543,"name":"i","declaredType":{"ref":271},"parentBehaviouralEntity":{"ref":434}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":544,"element":{"ref":186},"endPos":1794,"fileName":"./src/hello\\Hello.java","startPos":1185},{"FM3":"Famix-Java-Entities.Attribute","id":545,"name":"label","declaredType":{"ref":254},"parentType":{"ref":90},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":546,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":0,"parentType":{"ref":175},"signature":"execute(boolean)","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":547,"element":{"ref":331},"endPos":1436,"fileName":"./src/hello\\Hello.java","startPos":1415},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":548,"element":{"ref":87},"endPos":1268,"fileName":"./src/hello\\Hello.java","startPos":1263},{"FM3":"Famix-Java-Entities.Method","id":549,"name":"doubleInsideMethod","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":3,"parentType":{"ref":90},"signature":"doubleInsideMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":550,"name":"_Anonymous(ClickHandler)","typeContainer":{"ref":369},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":551,"element":{"ref":425},"endPos":1329,"fileName":"./src/hello\\Hello.java","startPos":1318},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":552,"element":{"ref":563},"endPos":4128,"fileName":"./src/hello\\Hello.java","startPos":4103},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":553,"element":{"ref":56},"endPos":3686,"fileName":"./src/hello\\Hello.java","startPos":3665},{"FM3":"Famix-Java-Entities.Reference","id":554,"previous":{"ref":388},"referencer":{"ref":13},"referredType":{"ref":451}},{"FM3":"Famix-Java-Entities.Invocation","id":555,"candidates":[{"ref":512}],"previous":{"ref":231},"sender":{"ref":142},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":556,"element":{"ref":535},"endPos":1507,"fileName":"./src/hello\\Hello.java","startPos":1457},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":557,"element":{"ref":113},"endPos":834,"fileName":"./src/hello\\Hello.java","startPos":823},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":558,"element":{"ref":583},"endPos":1584,"fileName":"./src/hello\\Hello.java","startPos":1352},{"FM3":"Famix-Java-Entities.Method","id":559,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":615},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":560,"element":{"ref":172},"endPos":4489,"fileName":"./src/hello\\Hello.java","startPos":4346},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":561,"element":{"ref":55},"endPos":2297,"fileName":"./src/hello\\Hello.java","startPos":2287},{"FM3":"Famix-Java-Entities.Inheritance","id":562,"subclass":{"ref":615},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.Invocation","id":563,"candidates":[{"ref":143}],"previous":{"ref":96},"sender":{"ref":381},"signature":"confirmGroupRemoval()"},{"FM3":"Famix-Java-Entities.Access","id":564,"accessor":{"ref":186},"previous":{"ref":284},"variable":{"ref":15}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":565,"element":{"ref":413},"endPos":3973,"fileName":"./src/hello\\Hello.java","startPos":3958},{"FM3":"Famix-Java-Entities.Attribute","id":566,"name":"A_FINAL_STRING","declaredType":{"ref":254},"isClassSide":true,"isFinal":true,"parentType":{"ref":103},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":567,"name":"getText","isStub":true,"parentType":{"ref":346},"signature":"getText()","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":568,"name":"Carrefour","isStub":true,"typeContainer":{"ref":570}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":569,"element":{"ref":546},"endPos":1161,"fileName":"./src/hello\\Hello.java","startPos":1114},{"FM3":"Famix-Java-Entities.Method","id":570,"name":"newAnonymousOfInnerClassFromAnonymousAndAffectation","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":1,"parentType":{"ref":90},"signature":"newAnonymousOfInnerClassFromAnonymousAndAffectation()","visibility":"private"},{"FM3":"Famix-Java-Entities.Access","id":571,"accessor":{"ref":198},"previous":{"ref":490},"variable":{"ref":23}},{"FM3":"Famix-Java-Entities.Method","id":572,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":615},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.LocalVariable","id":573,"name":"label42","parentBehaviouralEntity":{"ref":659}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":574,"element":{"ref":417},"endPos":3760,"fileName":"./src/hello\\Hello.java","startPos":3733},{"FM3":"Famix-Java-Entities.Interface","id":575,"name":"Constable","isStub":true,"typeContainer":{"ref":170},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":576,"name":"HashMap","isStub":true,"kind":"constructor","parentType":{"ref":277},"signature":"HashMap()","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":577,"name":"println","isStub":true,"parentType":{"ref":346},"signature":"println(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":578,"element":{"ref":296},"endPos":67,"fileName":"./src/hello\\MySuperClass.java","startPos":61},{"FM3":"Famix-Java-Entities.Inheritance","id":579,"subclass":{"ref":550},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":580,"element":{"ref":570},"endPos":5168,"fileName":"./src/hello\\Hello.java","startPos":4895},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":581,"element":{"ref":115},"endPos":901,"fileName":"./src/hello\\Hello.java","startPos":891},{"FM3":"Famix-Java-Entities.Reference","id":582,"previous":{"ref":204},"referencer":{"ref":381},"referredType":{"ref":158}},{"FM3":"Famix-Java-Entities.Invocation","id":583,"candidates":[{"ref":642}],"previous":{"ref":139},"sender":{"ref":186},"signature":"_Anonymous(Button)(\"I''am a Button\")"},{"FM3":"Famix-Java-Entities.Parameter","id":584,"name":"event","parentBehaviouralEntity":{"ref":602}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":585,"element":{"ref":443},"endPos":3407,"fileName":"./src/hello\\Hello.java","startPos":3390},{"FM3":"Famix-Java-Entities.Access","id":586,"accessor":{"ref":61},"isWrite":true,"previous":{"ref":492},"variable":{"ref":516}},{"FM3":"Famix-Java-Entities.Inheritance","id":587,"subclass":{"ref":519},"superclass":{"ref":533}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":588,"element":{"ref":604},"endPos":2681,"fileName":"./src/hello\\Hello.java","startPos":2640},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":589,"element":{"ref":153},"endPos":3760,"fileName":"./src/hello\\Hello.java","startPos":3733},{"FM3":"Famix-Java-Entities.Method","id":590,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":106},"signature":"_Anonymous(Button)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":591,"candidates":[{"ref":317}],"sender":{"ref":478},"signature":"Label()"},{"FM3":"Famix-Java-Entities.Class","id":592,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":526}},{"FM3":"Famix-Java-Entities.Invocation","id":593,"candidates":[{"ref":590}],"previous":{"ref":162},"sender":{"ref":549},"signature":"_Anonymous(Button)()"},{"FM3":"Famix-Java-Entities.Method","id":594,"name":"Button","isStub":true,"kind":"constructor","parentType":{"ref":432},"signature":"Button()","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":595,"name":"BLLabel","isStub":true,"typeContainer":{"ref":659}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":596,"element":{"ref":98},"endPos":718,"fileName":"./src/hello\\Hello.java","startPos":715},{"FM3":"Famix-Java-Entities.Method","id":597,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":336},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":598,"element":{"ref":330},"endPos":92,"fileName":"./src/hello\\MyInterface.java","startPos":79},{"FM3":"Famix-Java-Entities.Class","id":599,"name":"_Anonymous(ClickHandler)","typeContainer":{"ref":482},"visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":600,"accessor":{"ref":465},"variable":{"ref":54}},{"FM3":"Famix-Java-Entities.Class","id":601,"name":"HashMap","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.Method","id":602,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":599},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Implementation","id":603,"implementingClass":{"ref":611},"interface":{"ref":464},"previous":{"ref":429}},{"FM3":"Famix-Java-Entities.Reference","id":604,"previous":{"ref":105},"referencer":{"ref":526},"referredType":{"ref":322}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":605,"element":{"ref":187},"endPos":719,"fileName":"./src/hello\\Hello.java","startPos":704},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":606,"element":{"ref":593},"endPos":3826,"fileName":"./src/hello\\Hello.java","startPos":3463},{"FM3":"Famix-Java-Entities.Method","id":607,"name":"_Anonymous(ClickHandler)","isStub":true,"kind":"constructor","parentType":{"ref":550},"signature":"_Anonymous(ClickHandler)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Reference","id":608,"previous":{"ref":582},"referencer":{"ref":172},"referredType":{"ref":181}},{"FM3":"Famix-Java-Entities.Type","id":609,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":90}},{"FM3":"Famix-Java-Entities.Invocation","id":610,"candidates":[{"ref":248}],"sender":{"ref":151},"signature":"setWidget(new Button(\"I''am a Button\"){
  public void onInternalMethod(  final ClickEvent event){
    System.out.println(someLocalVariableDefineInExternalScope);
  }
}
)"},{"FM3":"Famix-Java-Entities.Class","id":611,"name":"OutputStream","isAbstract":true,"isStub":true,"typeContainer":{"ref":515},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":612,"name":"_Anonymous(Carrefour.Oupsi)","isStub":true,"kind":"constructor","parentType":{"ref":436},"signature":"_Anonymous(Carrefour.Oupsi)()","visibility":"package"},{"FM3":"Famix-Java-Entities.LocalVariable","id":613,"name":"fspLienSimple","parentBehaviouralEntity":{"ref":526}},{"FM3":"Famix-Java-Entities.Invocation","id":614,"candidates":[{"ref":164}],"sender":{"ref":365},"signature":"setCarrefour(new Carrefour.Oupsi(){
  @Override public void execute(  boolean bb){
  }
}
)"},{"FM3":"Famix-Java-Entities.Class","id":615,"name":"_Anonymous(Button)","typeContainer":{"ref":186},"visibility":"package"},{"FM3":"Famix-Java-Entities.Type","id":616,"name":"BLAbstractLienSimple","isStub":true,"typeContainer":{"ref":90}},{"FM3":"Famix-Java-Entities.Method","id":617,"name":"Box","isStub":true,"kind":"constructor","parentType":{"ref":392},"signature":"Box()","visibility":"public"},{"FM3":"Famix-Java-Entities.Inheritance","id":618,"subclass":{"ref":156},"superclass":{"ref":294}},{"FM3":"Famix-Java-Entities.Access","id":619,"accessor":{"ref":255},"isWrite":true,"variable":{"ref":402}},{"FM3":"Famix-Java-Entities.Class","id":620,"name":"BLLabel","isStub":true,"typeContainer":{"ref":300}},{"FM3":"Famix-Java-Entities.Access","id":621,"accessor":{"ref":142},"previous":{"ref":323},"variable":{"ref":178}},{"FM3":"Famix-Java-Entities.Class","id":622,"name":"Canard","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.Method","id":623,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":2,"parentType":{"ref":550},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":624,"referencer":{"ref":142},"referredType":{"ref":638}},{"FM3":"Famix-Java-Entities.Access","id":625,"accessor":{"ref":401},"isWrite":true,"variable":{"ref":155}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":626,"element":{"ref":584},"endPos":4738,"fileName":"./src/hello\\Hello.java","startPos":4723},{"FM3":"Famix-Java-Entities.Access","id":627,"accessor":{"ref":142},"previous":{"ref":396},"variable":{"ref":178}},{"FM3":"Famix-Java-Entities.Invocation","id":628,"candidates":[{"ref":201}],"sender":{"ref":13},"signature":"BLLabel(\"inside \")"},{"FM3":"Famix-Java-Entities.Method","id":629,"name":"Hello","cyclomaticComplexity":1,"kind":"constructor","numberOfStatements":3,"parentType":{"ref":90},"signature":"Hello()","visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":630,"previous":{"ref":608},"referencer":{"ref":482},"referredType":{"ref":316}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":631,"element":{"ref":507},"endPos":4698,"fileName":"./src/hello\\Hello.java","startPos":4691},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":632,"element":{"ref":183},"endPos":4798,"fileName":"./src/hello\\Hello.java","startPos":4756},{"FM3":"Famix-Java-Entities.Implementation","id":633,"implementingClass":{"ref":450},"interface":{"ref":349},"previous":{"ref":134}},{"FM3":"Famix-Java-Entities.PrimitiveType","id":634,"name":"void","isStub":true},{"FM3":"Famix-Java-Entities.Class","id":635,"name":"_Anonymous(Button)","typeContainer":{"ref":151},"visibility":"package"},{"FM3":"Famix-Java-Entities.Reference","id":636,"previous":{"ref":414},"referencer":{"ref":559},"referredType":{"ref":254}},{"FM3":"Famix-Java-Entities.Class","id":637,"name":"_Anonymous(Oupsi)","typeContainer":{"ref":570},"visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":638,"name":"HashMap","isStub":true,"typeContainer":{"ref":142}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":639,"element":{"ref":231},"endPos":751,"fileName":"./src/hello\\Hello.java","startPos":740},{"FM3":"Famix-Java-Entities.Class","id":640,"name":"Label","isStub":true,"typeContainer":{"ref":478}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":641,"element":{"ref":625},"endPos":115,"fileName":"./src/hello\\MyClass.java","startPos":109},{"FM3":"Famix-Java-Entities.Method","id":642,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":398},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":643,"candidates":[{"ref":265}],"previous":{"ref":406},"sender":{"ref":369},"signature":"addClickHandler(new ClickHandler(){
  @Override public void onClick(  final ClickEvent event){
    setValue(\"chosen by rel\");
    hide();
  }
}
)"},{"FM3":"Famix-Java-Entities.Invocation","id":644,"candidates":[{"ref":298}],"sender":{"ref":526},"signature":"BLFieldSetPanel(\"Lien simple\",\"100%\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":645,"element":{"ref":550},"endPos":3257,"fileName":"./src/hello\\Hello.java","startPos":3013},{"FM3":"Famix-Java-Entities.Access","id":646,"accessor":{"ref":172},"variable":{"ref":54}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":647,"element":{"ref":444},"endPos":1462,"fileName":"./src/hello\\Hello.java","startPos":1457},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":648,"element":{"ref":188},"endPos":4817,"fileName":"./src/hello\\Hello.java","startPos":4809},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":649,"element":{"ref":86},"endPos":4499,"fileName":"./src/hello\\Hello.java","startPos":4304},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":650,"element":{"ref":304},"endPos":4172,"fileName":"./src/hello\\Hello.java","startPos":4147},{"FM3":"Famix-Java-Entities.Invocation","id":651,"candidates":[{"ref":265}],"previous":{"ref":245},"sender":{"ref":482},"signature":"addClickHandler(new ClickHandler(){
  @Override public void onClick(  ClickEvent event){
    Box db=new Box(externalIdentifier.getText(),true);
    db.show();
  }
}
)"},{"FM3":"Famix-Java-Entities.Invocation","id":652,"candidates":[{"ref":196}],"previous":{"ref":314},"sender":{"ref":24},"signature":"InnerAtt(\"Période de validité\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":653,"element":{"ref":523},"endPos":1329,"fileName":"./src/hello\\Hello.java","startPos":1314},{"FM3":"Famix-Java-Entities.Method","id":654,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":366},"signature":"Canard(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":655,"element":{"ref":314},"endPos":5136,"fileName":"./src/hello\\Hello.java","startPos":5098},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":656,"element":{"ref":511},"endPos":2082,"fileName":"./src/hello\\Hello.java","startPos":2059},{"FM3":"Famix-Java-Entities.Method","id":657,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":1,"parentType":{"ref":637},"signature":"execute()","visibility":"public"},{"FM3":"Famix-Java-Entities.Access","id":658,"accessor":{"ref":186},"previous":{"ref":99},"variable":{"ref":15}},{"FM3":"Famix-Java-Entities.Method","id":659,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":634},"numberOfStatements":1,"parentType":{"ref":525},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.LocalVariable","id":660,"name":"j","parentBehaviouralEntity":{"ref":478}},{"FM3":"Famix-Java-Entities.Method","id":661,"name":"_Anonymous(Carrefour)","isStub":true,"kind":"constructor","parentType":{"ref":175},"signature":"_Anonymous(Carrefour)()","visibility":"package"}]'
]

{ #category : #resources }
CRFTest >> fastMethodBuildLienSimple [
	^ '@ShowroomSource
    private void buildLienSimple() {
        BLFieldSetPanel fspLienSimple = new BLFieldSetPanel("Lien simple", "100%");
        final BLAbstractLienSimple lienSimple = new BLAbstractLienSimple("Un lien simple", "Exemple de lien simple",
                true, false) {

            private final QuicksearchExempleREL rel = new QuicksearchExempleREL() {
                {
                    this.listeTestComplexe.addClickHandler(new ClickHandler() {

                        @Override
                        public void onClick(final ClickEvent event) {
                            setValue("chosen by rel");
                            hide();
                        }
                    });
                }
            };
        };

    }'
]

{ #category : #resources }
CRFTest >> fastMethodClassPropertyAccess [
	^ 'private void classPropertyAccess(){
        call(Hello.classProperty);
    }'
]

{ #category : #resources }
CRFTest >> fastMethodDeclarationInParameter [
	^ 'private void decla(int i){
        hello(i);
    }'
]

{ #category : #resources }
CRFTest >> fastMethodDoubleAffectation [
	^ 'private int doubleAffectation(){
        Label i = new Label();
        Label j = new Label();
    }'
]

{ #category : #resources }
CRFTest >> fastMethodDoubleInsideMethod [
	^ '@Override
    public void doubleInsideMethod() {
        BLLabel label = new BLLabel("out");
        Canard c = new Canard();
        c.setWidget(new Button(){
            public void onClick(final ClickEvent event) {
                BLLabel label41 = new BLLabel("inside ");
                new Button(){
                    public void onClick(final ClickEvent event) {
                        BLLabel label42 = new BLLabel("inside inside");
                    }
                };
            }
        });
    }'
]

{ #category : #resources }
CRFTest >> fastMethodExternalIdentifierMethod [

	"private void externalIdentifierMethod() {
		final Label externalIdentifier = new Label(""Boite de dialogue modale"");
		externalIdentifier.addClickHandler(new ClickHandler(){"

	^ '@Override
			public void onClick(ClickEvent event) {
				Box db = new Box(externalIdentifier.getText(), true);				
				db.show();
			}'
	"});
	}"
]

{ #category : #resources }
CRFTest >> fastMethodFieldAccess [
	^ 'private void fieldAccess(){
	call(this.classProperty);
	call2(this.patate);
}'
]

{ #category : #resources }
CRFTest >> fastMethodFieldAccessInitialization [
	^ 'private void useThisForFieldAccess(){
        this.patate = "Hello World";
        this.canard = new Carrefour() {
            public void execute(boolean bb) {

            }
        };
    }'
]

{ #category : #resources }
CRFTest >> fastMethodGetMenuIcon [
	^ 'private static ImageButton getMenuIcon(final int action, final String path, final String fileName, final String extension) {
        return Util.getInstance().new ImageButtonTreeUtils(i18n.confirmGroupRemoval(), path, fileName, i18n.confirmGroupRemoval());
    }'
]

{ #category : #resources }
CRFTest >> fastMethodInvocInSwitch [
	^ 'private void invocInSwitch() {
        final Integer nb = new Integer(12);
        final Integer nb2 = new Integer(12);
        if (nb2 != null) {
            switch (nb.compareTo(nb2)) {
            case -1:
                break;
            case 0:
                break;
            case 1:
                break;
            default:
                break;
            }
        }
    }'
]

{ #category : #resources }
CRFTest >> fastMethodMainString [
	^ 'public static void main(String[] args) {
        new Hello();
    }'
]

{ #category : #resources }
CRFTest >> fastMethodMyClassBuild [
	^ 'void build() {
        aString = new String();
    }'
]

{ #category : #resources }
CRFTest >> fastMethodNewAnonymousOfInnerClassFromAnonymousAndAffectation [
	^ 'private void newAnonymousOfInnerClassFromAnonymousAndAffectation() {
        Oupsi oup = new Carrefour().new Oupsi() {
            @Override
            public void execute(boolean bb) {
                System.out.println("Hello stupid code");
            }
        };
    }'
]

{ #category : #resources }
CRFTest >> fastMethodNewAnonymousOfInnerClassString [
	^ 'private void newAnonymousOfInnerClass(){
        supermarket.setCarrefour(new Carrefour.Oupsi() {
                @Override
				public void execute(boolean bb) {

                }
            });
    }'
]

{ #category : #resources }
CRFTest >> fastMethodNewMultiline [
	^ 'public void multiLineNew() {
			_llNbPoste = new BLLabel(
																"");;
	}'
]

{ #category : #resources }
CRFTest >> fastMethodOnInternalMethodClick [
	^ 'public void onInternalMethod(final ClickEvent event) {
                System.out.println(someLocalVariableDefineInExternalScope);
            }'
]

{ #category : #resources }
CRFTest >> fastMethodReturnNumberString [
	^ 'private int returnNumber(int i){
        return i;
    }'
]

{ #category : #resources }
CRFTest >> fastMethodStaticInitialization [
	^ 'static {
    	label = "Banana split";
    }'
]

{ #category : #resources }
CRFTest >> fastMethodTestString [
	^ 'public int test() {
        hello = returnNumber(5);
        hello++;
        System.out.println(patate + hello);
        Canard c = new Canard();
        c.setWidget(new Button("I''am a Button") {

            public void onClick(final ClickEvent event) {
                System.out.println(event + " I''m calling " + hello);
                Button innertButton = new Button();
            }
        });

        c.setWidget(new Button("I''am another Button") {

            public void onClick(final ClickEvent event) {
                label = new String();
            }
        });
        return hello;
    }'
]

{ #category : #accessing }
CRFTest >> fastModel [
	^ fastModel
]

{ #category : #accessing }
CRFTest >> fastModel: anObject [
	fastModel := anObject
]

{ #category : #resources }
CRFTest >> fastMyInterfaceString [ 
	^ 'package hello;

public interface MyInterface {
    public static final String A_FINAL_STRING = "MyString";

}
'
]

{ #category : #resources }
CRFTest >> fastString [ 
	^ 'package hello;

import com.Button;
import com.Label;
import com.BLLabel;
import com.Canard;
import bl.BLFieldSetPanel;
import bl.BLAbstractLienSimple;
import bl.QuicksearchExempleREL;
import badetitou.Carrefour;
import badetitou.InnerAtt;
import click.ClickHandler;

import java.util.Map;

public class Hello {
    static int classProperty;
    String patate;
    int hello;
    String label;
    private Carrefour canard;

    private String externalAttribute;
    
    private static final Map<String, String> aMap = new HashMap<String, String>();
    static {
		aMap.put("1", "1");
		aMap.put("2", "2");
		aMap.put("3", "3");
		aMap.put("4", "4");
		aMap.put("5", "5");
	}
    Canard complexCanard = new Canard(aMap);

    Canard c42 = new Canard();

    static {
        label = "Banana split";
    }

    Canard c7 = new Canard();

    public static void main(String[] args) {
        new Hello();
    }

    public Hello() {
        patate = "Patate";
        test();
    }

    private void useThisForFieldAccess() {
        this.patate = "Hello World";
        this.canard = new Carrefour() {
            public void execute(boolean bb) {

            }
        };
    }

    public int test() {
        hello = returnNumber(5);
        hello++;
        System.out.println(patate + hello);
        Canard c = new Canard();
        c.setWidget(new Button("I''am a Button") {

            public void onClick(final ClickEvent event) {
                System.out.println(event + " I''m calling " + hello);
                Button innertButton = new Button();
            }
        });

        c.setWidget(new Button("I''am another Button") {

            public void onClick(final ClickEvent event) {
                label = new String();
            }
        });
        return hello;
    }

    private int returnNumber(int i) {
        return i;
    }

    private void longNew() {
        Hello you = new hello.Hello();
    }

    private void classPropertyAccess() {
        call(Hello.classProperty);
    }

    private void fieldAccess() {
        call(this.classProperty);
        call2(this.patate);
    }

    private void array(){
        String[] hello = new String[]{"1", "2"};
        hello[2].toString();
    }

    private int doubleAffectation() {
        Label i = new Label();
        Label j = new Label();
    }

    private void newAnonymousOfInnerClass() {
        supermarket.setCarrefour(new Carrefour.Oupsi() {
            @Override
            public void execute(boolean bb) {

            }
        });
    }

    @ShowroomSource
    private void buildLienSimple() {
        BLFieldSetPanel fspLienSimple = new BLFieldSetPanel("Lien simple", "100%");
        final BLAbstractLienSimple lienSimple = new BLAbstractLienSimple("Un lien simple", "Exemple de lien simple",
                true, false) {

            private final QuicksearchExempleREL rel = new QuicksearchExempleREL() {
                {
                    this.listeTestComplexe.addClickHandler(new ClickHandler() {

                        @Override
                        public void onClick(final ClickEvent event) {
                            setValue("chosen by rel");
                            hide();
                        }
                    });
                }
            };
        };

    }

    @Override
    public void doubleInsideMethod() {
        BLLabel label = new BLLabel("out");
        Canard c = new Canard();
        c.setWidget(new Button() {
            public void onClick(final ClickEvent event) {
                BLLabel label41 = new BLLabel("inside ");
                new Button() {
                    public void onClick(final ClickEvent event) {
                        BLLabel label42 = new BLLabel("inside inside");
                    }
                };
            }
        });
    }

    public void multiLineNew() {
        _llNbPoste = new BLLabel("");
    }

    private static ImageButton getMenuIcon(final int action, final String path, final String fileName, final String extension) {
        return Util.getInstance().new ImageButtonTreeUtils(i18n.confirmGroupRemoval(), path, fileName, i18n.confirmGroupRemoval());
    }

    private void externalMethod() {
        String someLocalVariableDefineInExternalScope = "hello";
        c.setWidget(new Button("I''am a Button") {
            public void onInternalMethod(final ClickEvent event) {
                System.out.println(someLocalVariableDefineInExternalScope);
            }
        });
    }

    private void externalIdentifierMethod() {
		final Label externalIdentifier = new Label("Boite de dialogue modale");
		externalIdentifier.addClickHandler(new ClickHandler(){
			@Override
			public void onClick(ClickEvent event) {
				Box db = new Box(externalIdentifier.getText(), true);				
				db.show();
			}
		});
	}

    private void decla(int i){
        hello(i);
    }

    private void newAnonymousOfInnerClassFromAnonymousAndAffectation() {
        Oupsi oup = new Carrefour().new Oupsi() {
            @Override
            public void execute(boolean bb) {
                System.out.println("Hello stupid code");
            }
        };
    }

    public class InnerHello {

        InnerAtt _InnerAtt = new InnerAtt("Période de validité");
        
        public void innerHelloMethod() {
            externalAttribute = "hello";
        }
    }

}'
]

{ #category : #running }
CRFTest >> setUp [
	super setUp.
	famixModel := (CRFModel new
		importFromJSONStream: (ReadStream on: self famixModelString)) name: #famixModel;
		yourself.
	famixModel rootFolder: 'D:\Developpement\mse\verveineJ2'.
]
