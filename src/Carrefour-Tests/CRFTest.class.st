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
	^ '[{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":1,"element":{"ref":152},"endPos":1764,"fileName":"./src/hello\\Hello.java","startPos":1643},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":2,"element":{"ref":254},"endPos":751,"fileName":"./src/hello\\Hello.java","startPos":740},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":3,"element":{"ref":311},"endPos":569,"fileName":"./src/hello\\Hello.java","startPos":566},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":4,"element":{"ref":22},"endPos":3912,"fileName":"./src/hello\\Hello.java","startPos":3841},{"FM3":"Famix-Java-Entities.Invocation","id":5,"candidates":[{"ref":57}],"previous":{"ref":308},"receiver":{"ref":129},"sender":{"ref":506},"signature":"put(\"3\",\"3\")"},{"FM3":"Famix-Java-Entities.LocalVariable","id":6,"name":"label","parentBehaviouralEntity":{"ref":441}},{"FM3":"Famix-Java-Entities.ParameterizableClass","id":7,"name":"Map","isInterface":true,"isStub":true,"typeContainer":{"ref":131},"visibility":"public"},{"FM3":"Famix-Java-Entities.Parameter","id":8,"name":"event","parentBehaviouralEntity":{"ref":132}},{"FM3":"Famix-Java-Entities.Invocation","id":9,"candidates":[{"ref":361}],"previous":{"ref":254},"sender":{"ref":506},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":10,"element":{"ref":352},"endPos":1559,"fileName":"./src/hello\\Hello.java","startPos":1548},{"FM3":"Famix-Java-Entities.Method","id":11,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":616},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":12,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":392}},{"FM3":"Famix-Java-Entities.LocalVariable","id":13,"name":"db","parentBehaviouralEntity":{"ref":232}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":14,"element":{"ref":147},"endPos":1585,"fileName":"./src/hello\\Hello.java","startPos":1340},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":15,"element":{"ref":267},"endPos":2297,"fileName":"./src/hello\\Hello.java","startPos":2283},{"FM3":"Famix-Java-Entities.Invocation","id":16,"candidates":[{"ref":600}],"previous":{"ref":352},"sender":{"ref":553},"signature":"setWidget(new Button(\"I''am another Button\"){
  public void onClick(  final ClickEvent event){
    label=new String();
  }
}
)"},{"FM3":"Famix-Java-Entities.Type","id":17,"name":"Label","isStub":true,"typeContainer":{"ref":104}},{"FM3":"Famix-Java-Entities.Method","id":18,"name":"externalMethod","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":104},"signature":"externalMethod()","visibility":"private"},{"FM3":"Famix-Java-Entities.LocalVariable","id":19,"name":"oup","parentBehaviouralEntity":{"ref":398}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":20,"element":{"ref":619},"endPos":3905,"fileName":"./src/hello\\Hello.java","startPos":3891},{"FM3":"Famix-Java-Entities.Invocation","id":21,"candidates":[{"ref":588}],"receiver":{"ref":84},"sender":{"ref":69},"signature":"println(someLocalVariableDefineInExternalScope)"},{"FM3":"Famix-Java-Entities.Method","id":22,"name":"multiLineNew","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":104},"signature":"multiLineNew()","visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":23,"name":"doubleAffectation","cyclomaticComplexity":1,"declaredType":{"ref":495},"numberOfStatements":2,"parentType":{"ref":104},"signature":"doubleAffectation()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":24,"element":{"ref":379},"endPos":3302,"fileName":"./src/hello\\Hello.java","startPos":2719},{"FM3":"Famix-Java-Entities.Reference","id":25,"previous":{"ref":570},"referencer":{"ref":344},"referredType":{"ref":27}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":26,"element":{"ref":515},"endPos":1235,"fileName":"./src/hello\\Hello.java","startPos":1221},{"FM3":"Famix-Java-Entities.AnnotationType","id":27,"name":"Override","annotationTypesContainer":{"ref":603},"isStub":true},{"FM3":"Famix-Java-Entities.Inheritance","id":28,"subclass":{"ref":283},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":29,"element":{"ref":539},"endPos":3208,"fileName":"./src/hello\\Hello.java","startPos":3203},{"FM3":"Famix-Java-Entities.Reference","id":30,"previous":{"ref":619},"referencer":{"ref":438},"referredType":{"ref":176}},{"FM3":"Famix-Java-Entities.Reference","id":31,"previous":{"ref":545},"referencer":{"ref":305},"referredType":{"ref":474}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":32,"element":{"ref":364},"endPos":1574,"fileName":"./src/hello\\Hello.java","startPos":1395},{"FM3":"Famix-Java-Entities.Reference","id":33,"previous":{"ref":95},"referencer":{"ref":398},"referredType":{"ref":573}},{"FM3":"Famix-Java-Entities.Access","id":34,"accessor":{"ref":364},"variable":{"ref":84}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":35,"element":{"ref":50},"endPos":901,"fileName":"./src/hello\\Hello.java","startPos":891},{"FM3":"Famix-Java-Entities.Class","id":36,"name":"Canard","isStub":true,"typeContainer":{"ref":441}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":37,"element":{"ref":301},"endPos":657,"fileName":"./src/hello\\Hello.java","startPos":654},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":38,"element":{"ref":503},"endPos":3783,"fileName":"./src/hello\\Hello.java","startPos":3645},{"FM3":"Famix-Java-Entities.Inheritance","id":39,"previous":{"ref":126},"subclass":{"ref":283},"superclass":{"ref":292}},{"FM3":"Famix-Java-Entities.Type","id":40,"name":"Carrefour","isStub":true,"typeContainer":{"ref":104}},{"FM3":"Famix-Java-Entities.Invocation","id":41,"candidates":[{"ref":600}],"sender":{"ref":18},"signature":"setWidget(new Button(\"I''am a Button\"){
  public void onInternalMethod(  final ClickEvent event){
    System.out.println(someLocalVariableDefineInExternalScope);
  }
}
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":42,"element":{"ref":595},"endPos":1217,"fileName":"./src/hello\\Hello.java","startPos":1213},{"FM3":"Famix-Java-Entities.Inheritance","id":43,"subclass":{"ref":373},"superclass":{"ref":169}},{"FM3":"Famix-Java-Entities.PrimitiveType","id":44,"name":"boolean","isStub":true},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":45,"element":{"ref":561},"endPos":2681,"fileName":"./src/hello\\Hello.java","startPos":2624},{"FM3":"Famix-Java-Entities.Access","id":46,"accessor":{"ref":378},"isWrite":true,"previous":{"ref":161},"variable":{"ref":535}},{"FM3":"Famix-Java-Entities.Class","id":47,"name":"_Anonymous(Carrefour)","typeContainer":{"ref":378},"visibility":"package"},{"FM3":"Famix-Java-Entities.LocalVariable","id":48,"name":"c","parentBehaviouralEntity":{"ref":441}},{"FM3":"Famix-Java-Entities.Attribute","id":49,"name":"canard","parentType":{"ref":104}},{"FM3":"Famix-Java-Entities.Reference","id":50,"previous":{"ref":93},"referencer":{"ref":470},"referredType":{"ref":104}},{"FM3":"Famix-Java-Entities.Class","id":51,"name":"Serializable","isInterface":true,"isStub":true,"typeContainer":{"ref":197},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":52,"element":{"ref":618},"endPos":671,"fileName":"./src/hello\\Hello.java","startPos":654},{"FM3":"Famix-Java-Entities.Class","id":53,"name":"_Anonymous(ClickHandler)","typeContainer":{"ref":136},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":54,"element":{"ref":371},"endPos":4738,"fileName":"./src/hello\\Hello.java","startPos":4723},{"FM3":"Famix-Java-Entities.Method","id":55,"name":"call2","isStub":true,"parentType":{"ref":580},"signature":"call2(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":56,"candidates":[{"ref":518}],"previous":{"ref":446},"sender":{"ref":526},"signature":"_Anonymous(BLAbstractLienSimple)(\"Un lien simple\",\"Exemple de lien simple\",true,false)"},{"FM3":"Famix-Java-Entities.Method","id":57,"name":"put","declaredType":{"ref":565},"isAbstract":true,"isStub":true,"parentType":{"ref":7},"signature":"put(K,V)","visibility":"public"},{"FM3":"Famix-Java-Entities.Parameter","id":58,"name":"bb","declaredType":{"ref":44},"parentBehaviouralEntity":{"ref":286}},{"FM3":"Famix-Java-Entities.Parameter","id":59,"name":"event","parentBehaviouralEntity":{"ref":105}},{"FM3":"Famix-Java-Entities.Class","id":60,"name":"BLLabel","isStub":true,"typeContainer":{"ref":441}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":61,"element":{"ref":385},"endPos":339,"fileName":"./src/hello\\Hello.java","startPos":327},{"FM3":"Famix-Java-Entities.Reference","id":62,"referencer":{"ref":506},"referredType":{"ref":504}},{"FM3":"Famix-Java-Entities.LocalVariable","id":63,"name":"c","parentBehaviouralEntity":{"ref":553}},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":64,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":553}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":65,"element":{"ref":546},"endPos":4173,"fileName":"./src/hello\\Hello.java","startPos":4059},{"FM3":"Famix-Java-Entities.Access","id":66,"accessor":{"ref":364},"previous":{"ref":34},"variable":{"ref":116}},{"FM3":"Famix-Java-Entities.Invocation","id":67,"candidates":[{"ref":163}],"previous":{"ref":530},"sender":{"ref":232},"signature":"show()"},{"FM3":"Famix-Java-Entities.Class","id":68,"name":"_Anonymous(Button)","typeContainer":{"ref":132},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":69,"name":"onInternalMethod","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":1,"parentType":{"ref":83},"signature":"onInternalMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":70,"element":{"ref":107},"endPos":4499,"fileName":"./src/hello\\Hello.java","startPos":4304},{"FM3":"Famix-Java-Entities.Method","id":71,"name":"_Anonymous(Oupsi)","isStub":true,"kind":"constructor","parentType":{"ref":517},"signature":"_Anonymous(Oupsi)()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":72,"element":{"ref":392},"endPos":2117,"fileName":"./src/hello\\Hello.java","startPos":2022},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":73,"element":{"ref":305},"endPos":4832,"fileName":"./src/hello\\Hello.java","startPos":4514},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":74,"element":{"ref":118},"endPos":834,"fileName":"./src/hello\\Hello.java","startPos":818},{"FM3":"Famix-Java-Entities.Access","id":75,"accessor":{"ref":532},"isWrite":true,"variable":{"ref":261}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":76,"element":{"ref":354},"endPos":719,"fileName":"./src/hello\\Hello.java","startPos":704},{"FM3":"Famix-Java-Entities.Invocation","id":77,"candidates":[{"ref":425}],"previous":{"ref":150},"sender":{"ref":136},"signature":"_Anonymous(ClickHandler)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":78,"element":{"ref":46},"endPos":1043,"fileName":"./src/hello\\Hello.java","startPos":1033},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":79,"element":{"ref":441},"endPos":3834,"fileName":"./src/hello\\Hello.java","startPos":3317},{"FM3":"Famix-Java-Entities.Reference","id":80,"previous":{"ref":322},"referencer":{"ref":265},"referredType":{"ref":104}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":81,"element":{"ref":318},"endPos":1584,"fileName":"./src/hello\\Hello.java","startPos":1352},{"FM3":"Famix-Java-Entities.Parameter","id":82,"name":"bb","parentBehaviouralEntity":{"ref":217}},{"FM3":"Famix-Java-Entities.Class","id":83,"name":"_Anonymous(Button)","typeContainer":{"ref":18},"visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":84,"name":"out","isClassSide":true,"isFinal":true,"isStub":true,"parentType":{"ref":122},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":85,"element":{"ref":86},"endPos":1329,"fileName":"./src/hello\\Hello.java","startPos":1318},{"FM3":"Famix-Java-Entities.Reference","id":86,"previous":{"ref":221},"referencer":{"ref":553},"referredType":{"ref":249}},{"FM3":"Famix-Java-Entities.Method","id":87,"name":"addClickHandler","isStub":true,"parentType":{"ref":580},"signature":"addClickHandler(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":88,"name":"Constable","isInterface":true,"isStub":true,"typeContainer":{"ref":412},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":89,"element":{"ref":77},"endPos":3257,"fileName":"./src/hello\\Hello.java","startPos":2994},{"FM3":"Famix-Java-Entities.Parameter","id":90,"name":"action","declaredType":{"ref":495},"parentBehaviouralEntity":{"ref":438}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":91,"element":{"ref":498},"endPos":2109,"fileName":"./src/hello\\Hello.java","startPos":2099},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":92,"element":{"ref":196},"endPos":4888,"fileName":"./src/hello\\Hello.java","startPos":4839},{"FM3":"Famix-Java-Entities.Reference","id":93,"previous":{"ref":538},"referencer":{"ref":506},"referredType":{"ref":594}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":94,"element":{"ref":265},"endPos":2015,"fileName":"./src/hello\\Hello.java","startPos":1939},{"FM3":"Famix-Java-Entities.Reference","id":95,"previous":{"ref":127},"referencer":{"ref":232},"referredType":{"ref":272}},{"FM3":"Famix-Java-Entities.Invocation","id":96,"candidates":[{"ref":611}],"sender":{"ref":457},"signature":"Hello()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":97,"element":{"ref":617},"endPos":4426,"fileName":"./src/hello\\Hello.java","startPos":4417},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":98,"element":{"ref":90},"endPos":3973,"fileName":"./src/hello\\Hello.java","startPos":3958},{"FM3":"Famix-Java-Entities.Reference","id":99,"previous":{"ref":491},"referencer":{"ref":503},"referredType":{"ref":183}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":100,"element":{"ref":110},"endPos":2081,"fileName":"./src/hello\\Hello.java","startPos":2064},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":101,"element":{"ref":136},"endPos":3277,"fileName":"./src/hello\\Hello.java","startPos":2933},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":102,"element":{"ref":227},"endPos":3686,"fileName":"./src/hello\\Hello.java","startPos":3665},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":103,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":265}},{"FM3":"Famix-Java-Entities.Class","id":104,"name":"Hello","typeContainer":{"ref":607},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":105,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":152},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.LocalVariable","id":106,"name":"innertButton","parentBehaviouralEntity":{"ref":364}},{"FM3":"Famix-Java-Entities.Invocation","id":107,"candidates":[{"ref":350}],"previous":{"ref":41},"sender":{"ref":18},"signature":"_Anonymous(Button)(\"I''am a Button\")"},{"FM3":"Famix-Java-Entities.Class","id":108,"name":"ConstantDesc","isInterface":true,"isStub":true,"typeContainer":{"ref":412},"visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":109,"name":"BLLabel","isStub":true,"typeContainer":{"ref":503}},{"FM3":"Famix-Java-Entities.Access","id":110,"accessor":{"ref":392},"previous":{"ref":510},"variable":{"ref":385}},{"FM3":"Famix-Java-Entities.Class","id":111,"name":"Canard","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.Method","id":112,"name":"call","isStub":true,"parentType":{"ref":580},"signature":"call(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":113,"name":"Canard","isStub":true,"typeContainer":{"ref":441}},{"FM3":"Famix-Java-Entities.Class","id":114,"name":"Canard","isStub":true,"typeContainer":{"ref":553}},{"FM3":"Famix-Java-Entities.Method","id":115,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":239},"signature":"Label()","visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":116,"name":"hello","declaredType":{"ref":495},"parentType":{"ref":104},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":117,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":314},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":118,"name":"c7","parentType":{"ref":104}},{"FM3":"Famix-Java-Entities.Access","id":119,"accessor":{"ref":506},"isWrite":true,"previous":{"ref":195},"variable":{"ref":335}},{"FM3":"Famix-Java-Entities.LocalVariable","id":120,"name":"label41","parentBehaviouralEntity":{"ref":132}},{"FM3":"Famix-Java-Entities.Invocation","id":121,"candidates":[{"ref":71}],"sender":{"ref":398},"signature":"_Anonymous(Oupsi)()"},{"FM3":"Famix-Java-Entities.Class","id":122,"name":"System","isFinal":true,"isStub":true,"typeContainer":{"ref":603},"visibility":"public"},{"FM3":"Famix-Java-Entities.Inheritance","id":123,"subclass":{"ref":53},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":124,"element":{"ref":82},"endPos":5077,"fileName":"./src/hello\\Hello.java","startPos":5068},{"FM3":"Famix-Java-Entities.Attribute","id":125,"name":"_InnerAtt","parentType":{"ref":555}},{"FM3":"Famix-Java-Entities.Inheritance","id":126,"previous":{"ref":28},"subclass":{"ref":283},"superclass":{"ref":51}},{"FM3":"Famix-Java-Entities.Reference","id":127,"previous":{"ref":31},"referencer":{"ref":232},"referredType":{"ref":27}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":128,"element":{"ref":195},"endPos":718,"fileName":"./src/hello\\Hello.java","startPos":715},{"FM3":"Famix-Java-Entities.Attribute","id":129,"name":"aMap","declaredType":{"ref":330},"isClassSide":true,"isFinal":true,"parentType":{"ref":104},"visibility":"private"},{"FM3":"Famix-Java-Entities.Access","id":130,"accessor":{"ref":553},"previous":{"ref":489},"variable":{"ref":116}},{"FM3":"Famix-Java-Entities.Package","id":131,"name":"util","isStub":true,"parentPackage":{"ref":463}},{"FM3":"Famix-Java-Entities.Method","id":132,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":606},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":133,"element":{"ref":426},"endPos":3440,"fileName":"./src/hello\\Hello.java","startPos":3429},{"FM3":"Famix-Java-Entities.Access","id":134,"accessor":{"ref":265},"variable":{"ref":385}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":135,"element":{"ref":542},"endPos":3801,"fileName":"./src/hello\\Hello.java","startPos":3610},{"FM3":"Famix-Java-Entities.Method","id":136,"name":"<Initializer>","cyclomaticComplexity":1,"numberOfStatements":1,"parentType":{"ref":513},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":137,"element":{"ref":95},"endPos":4798,"fileName":"./src/hello\\Hello.java","startPos":4756},{"FM3":"Famix-Java-Entities.Type","id":138,"name":"BLLabel","isStub":true,"typeContainer":{"ref":104}},{"FM3":"Famix-Java-Entities.Method","id":139,"name":"println","declaredType":{"ref":449},"isStub":true,"parentType":{"ref":165},"signature":"println(char[])","visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":140,"name":"Canard","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":141,"element":{"ref":125},"endPos":5265,"fileName":"./src/hello\\Hello.java","startPos":5219},{"FM3":"Famix-Java-Entities.Reference","id":142,"previous":{"ref":444},"referencer":{"ref":506},"referredType":{"ref":419}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":143,"element":{"ref":271},"endPos":3407,"fileName":"./src/hello\\Hello.java","startPos":3390},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":144,"element":{"ref":477},"endPos":591,"fileName":"./src/hello\\Hello.java","startPos":588},{"FM3":"Famix-Java-Entities.Class","id":145,"name":"BLLabel","isStub":true,"typeContainer":{"ref":22}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":146,"element":{"ref":204},"endPos":901,"fileName":"./src/hello\\Hello.java","startPos":891},{"FM3":"Famix-Java-Entities.Invocation","id":147,"candidates":[{"ref":600}],"previous":{"ref":550},"sender":{"ref":553},"signature":"setWidget(new Button(\"I''am a Button\"){
  public void onClick(  final ClickEvent event){
    System.out.println(event + \" I''m calling \" + hello);
    Button innertButton=new Button();
  }
}
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":148,"element":{"ref":624},"endPos":3440,"fileName":"./src/hello\\Hello.java","startPos":3429},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":149,"element":{"ref":448},"endPos":3760,"fileName":"./src/hello\\Hello.java","startPos":3733},{"FM3":"Famix-Java-Entities.Invocation","id":150,"candidates":[{"ref":87}],"previous":{"ref":299},"sender":{"ref":136},"signature":"addClickHandler(new ClickHandler(){
  @Override public void onClick(  final ClickEvent event){
    setValue(\"chosen by rel\");
    hide();
  }
}
)"},{"FM3":"Famix-Java-Entities.Inheritance","id":151,"subclass":{"ref":47},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.Class","id":152,"name":"_Anonymous(Button)","typeContainer":{"ref":553},"visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":153,"subclass":{"ref":152},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.Class","id":154,"name":"Carrefour","isStub":true,"typeContainer":{"ref":398}},{"FM3":"Famix-Java-Entities.Method","id":155,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":606},"signature":"_Anonymous(Button)()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":156,"element":{"ref":5},"endPos":627,"fileName":"./src/hello\\Hello.java","startPos":610},{"FM3":"Famix-Java-Entities.Method","id":157,"name":"setCarrefour","isStub":true,"parentType":{"ref":580},"signature":"setCarrefour(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.AnnotationInstance","id":158,"annotatedEntity":{"ref":344},"annotationType":{"ref":27}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":159,"element":{"ref":526},"endPos":3310,"fileName":"./src/hello\\Hello.java","startPos":2547},{"FM3":"Famix-Java-Entities.Invocation","id":160,"candidates":[{"ref":478}],"previous":{"ref":121},"sender":{"ref":398},"signature":"Carrefour()"},{"FM3":"Famix-Java-Entities.Access","id":161,"accessor":{"ref":378},"isWrite":true,"variable":{"ref":188}},{"FM3":"Famix-Java-Entities.Method","id":162,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":273},"signature":"Label(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":163,"name":"show","isStub":true,"parentType":{"ref":580},"signature":"show()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":164,"element":{"ref":562},"endPos":3291,"fileName":"./src/hello\\Hello.java","startPos":2881},{"FM3":"Famix-Java-Entities.Class","id":165,"name":"PrintStream","isStub":true,"typeContainer":{"ref":197},"visibility":"public"},{"FM3":"Famix-Java-Entities.Attribute","id":166,"name":"externalAttribute","declaredType":{"ref":283},"parentType":{"ref":104},"visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":167,"element":{"ref":257},"endPos":3235,"fileName":"./src/hello\\Hello.java","startPos":3040},{"FM3":"Famix-Java-Entities.Method","id":168,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":571},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":169,"name":"OutputStream","isAbstract":true,"isStub":true,"typeContainer":{"ref":197},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":170,"element":{"ref":592},"endPos":4396,"fileName":"./src/hello\\Hello.java","startPos":4375},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":171,"element":{"ref":121},"endPos":5161,"fileName":"./src/hello\\Hello.java","startPos":4984},{"FM3":"Famix-Java-Entities.Invocation","id":172,"candidates":[{"ref":162}],"sender":{"ref":305},"signature":"Label(\"Boite de dialogue modale\")"},{"FM3":"Famix-Java-Entities.Class","id":173,"name":"InnerAtt","isStub":true,"typeContainer":{"ref":575}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":174,"element":{"ref":409},"endPos":3302,"fileName":"./src/hello\\Hello.java","startPos":2830},{"FM3":"Famix-Java-Entities.LocalVariable","id":175,"name":"label42","parentBehaviouralEntity":{"ref":503}},{"FM3":"Famix-Java-Entities.Class","id":176,"name":"ImageButtonTreeUtils","isStub":true,"typeContainer":{"ref":438}},{"FM3":"Famix-Java-Entities.Inheritance","id":177,"previous":{"ref":566},"subclass":{"ref":165},"superclass":{"ref":529}},{"FM3":"Famix-Java-Entities.Method","id":178,"name":"_Anonymous(QuicksearchExempleREL)","isStub":true,"kind":"constructor","parentType":{"ref":513},"signature":"_Anonymous(QuicksearchExempleREL)()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":179,"element":{"ref":598},"endPos":1737,"fileName":"./src/hello\\Hello.java","startPos":1732},{"FM3":"Famix-Java-Entities.Invocation","id":180,"candidates":[{"ref":600}],"previous":{"ref":624},"sender":{"ref":441},"signature":"setWidget(new Button(){
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
)"},{"FM3":"Famix-Java-Entities.Method","id":181,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":114},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":182,"candidates":[{"ref":57}],"previous":{"ref":5},"receiver":{"ref":129},"sender":{"ref":506},"signature":"put(\"4\",\"4\")"},{"FM3":"Famix-Java-Entities.Class","id":183,"name":"BLLabel","isStub":true,"typeContainer":{"ref":503}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":184,"element":{"ref":375},"endPos":1739,"fileName":"./src/hello\\Hello.java","startPos":1728},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":185,"element":{"ref":192},"endPos":1739,"fileName":"./src/hello\\Hello.java","startPos":1728},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":186,"element":{"ref":312},"endPos":3407,"fileName":"./src/hello\\Hello.java","startPos":3390},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":187,"element":{"ref":166},"endPos":460,"fileName":"./src/hello\\Hello.java","startPos":444},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":188,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":378}},{"FM3":"Famix-Java-Entities.Class","id":189,"name":"_Anonymous(ClickHandler)","typeContainer":{"ref":305},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":190,"element":{"ref":34},"endPos":1466,"fileName":"./src/hello\\Hello.java","startPos":1457},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":191,"element":{"ref":393},"endPos":4862,"fileName":"./src/hello\\Hello.java","startPos":4858},{"FM3":"Famix-Java-Entities.Reference","id":192,"previous":{"ref":306},"referencer":{"ref":105},"referredType":{"ref":283}},{"FM3":"Famix-Java-Entities.Type","id":193,"name":"Box","isStub":true,"typeContainer":{"ref":189}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":194,"element":{"ref":244},"endPos":613,"fileName":"./src/hello\\Hello.java","startPos":610},{"FM3":"Famix-Java-Entities.Access","id":195,"accessor":{"ref":506},"previous":{"ref":301},"variable":{"ref":129}},{"FM3":"Famix-Java-Entities.Method","id":196,"name":"decla","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":1,"parentType":{"ref":104},"signature":"decla(int)","visibility":"private"},{"FM3":"Famix-Java-Entities.Package","id":197,"name":"io","isStub":true,"parentPackage":{"ref":463}},{"FM3":"Famix-Java-Entities.Class","id":198,"name":"Canard","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.Class","id":199,"name":"BLLabel","isStub":true,"typeContainer":{"ref":132}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":200,"element":{"ref":510},"endPos":2081,"fileName":"./src/hello\\Hello.java","startPos":2064},{"FM3":"Famix-Java-Entities.ParameterizableClass","id":201,"name":"Comparable","isInterface":true,"isStub":true,"typeContainer":{"ref":603},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":202,"element":{"ref":99},"endPos":3760,"fileName":"./src/hello\\Hello.java","startPos":3733},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":203,"element":{"ref":430},"endPos":5136,"fileName":"./src/hello\\Hello.java","startPos":5098},{"FM3":"Famix-Java-Entities.Invocation","id":204,"candidates":[{"ref":611}],"sender":{"ref":470},"signature":"Hello()"},{"FM3":"Famix-Java-Entities.Invocation","id":205,"candidates":[{"ref":623}],"previous":{"ref":277},"sender":{"ref":305},"signature":"_Anonymous(ClickHandler)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":206,"element":{"ref":104},"endPos":5376,"fileName":"./src/hello\\Hello.java","startPos":291},{"FM3":"Famix-Java-Entities.Inheritance","id":207,"subclass":{"ref":122},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.Class","id":208,"name":"_Anonymous(Carrefour.Oupsi)","typeContainer":{"ref":289},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":209,"element":{"ref":93},"endPos":834,"fileName":"./src/hello\\Hello.java","startPos":823},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":210,"element":{"ref":250},"endPos":1830,"fileName":"./src/hello\\Hello.java","startPos":1826},{"FM3":"Famix-Java-Entities.Method","id":211,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":140},"signature":"Canard(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":212,"name":"InnerAtt","isStub":true,"typeContainer":{"ref":575}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":213,"element":{"ref":471},"endPos":2110,"fileName":"./src/hello\\Hello.java","startPos":2093},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":214,"element":{"ref":545},"endPos":4422,"fileName":"./src/hello\\Hello.java","startPos":4417},{"FM3":"Famix-Java-Entities.Reference","id":215,"previous":{"ref":62},"referencer":{"ref":506},"referredType":{"ref":544}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":216,"element":{"ref":611},"endPos":979,"fileName":"./src/hello\\Hello.java","startPos":915},{"FM3":"Famix-Java-Entities.Method","id":217,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":1,"parentType":{"ref":517},"signature":"execute()","visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":218,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":152},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":219,"name":"c42","parentType":{"ref":104}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":220,"element":{"ref":313},"endPos":2082,"fileName":"./src/hello\\Hello.java","startPos":2059},{"FM3":"Famix-Java-Entities.Reference","id":221,"previous":{"ref":50},"referencer":{"ref":553},"referredType":{"ref":122}},{"FM3":"Famix-Java-Entities.Class","id":222,"name":"Canard","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.Invocation","id":223,"candidates":[{"ref":588}],"previous":{"ref":515},"receiver":{"ref":84},"sender":{"ref":553},"signature":"println(patate + hello)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":224,"element":{"ref":245},"endPos":548,"fileName":"./src/hello\\Hello.java","startPos":520},{"FM3":"Famix-Java-Entities.Method","id":225,"name":"InnerAtt","isStub":true,"kind":"constructor","parentType":{"ref":173},"signature":"InnerAtt(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":226,"element":{"ref":41},"endPos":4500,"fileName":"./src/hello\\Hello.java","startPos":4292},{"FM3":"Famix-Java-Entities.Parameter","id":227,"name":"event","parentBehaviouralEntity":{"ref":503}},{"FM3":"Famix-Java-Entities.Reference","id":228,"previous":{"ref":282},"referencer":{"ref":506},"referredType":{"ref":508}},{"FM3":"Famix-Java-Entities.Method","id":229,"name":"setValue","isStub":true,"parentType":{"ref":580},"signature":"setValue(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":230,"element":{"ref":506},"endPos":804,"fileName":"./src/hello\\Hello.java","startPos":759},{"FM3":"Famix-Java-Entities.Inheritance","id":231,"subclass":{"ref":68},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.Method","id":232,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":189},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":233,"element":{"ref":266},"endPos":1857,"fileName":"./src/hello\\Hello.java","startPos":1801},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":234,"element":{"ref":47},"endPos":1171,"fileName":"./src/hello\\Hello.java","startPos":1100},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":235,"element":{"ref":299},"endPos":3291,"fileName":"./src/hello\\Hello.java","startPos":2887},{"FM3":"Famix-Java-Entities.Type","id":236,"name":"InnerAtt","isStub":true,"typeContainer":{"ref":555}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":237,"element":{"ref":240},"endPos":3172,"fileName":"./src/hello\\Hello.java","startPos":3148},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":238,"element":{"ref":446},"endPos":2681,"fileName":"./src/hello\\Hello.java","startPos":2640},{"FM3":"Famix-Java-Entities.Class","id":239,"name":"Label","isStub":true,"typeContainer":{"ref":23}},{"FM3":"Famix-Java-Entities.Invocation","id":240,"candidates":[{"ref":229}],"receiver":{"ref":479},"sender":{"ref":257},"signature":"setValue(\"chosen by rel\")"},{"FM3":"Famix-Java-Entities.Parameter","id":241,"name":"path","declaredType":{"ref":283},"parentBehaviouralEntity":{"ref":438}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":242,"element":{"ref":306},"endPos":1559,"fileName":"./src/hello\\Hello.java","startPos":1548},{"FM3":"Famix-Java-Entities.Inheritance","id":243,"previous":{"ref":413},"subclass":{"ref":169},"superclass":{"ref":505}},{"FM3":"Famix-Java-Entities.Access","id":244,"accessor":{"ref":506},"previous":{"ref":477},"variable":{"ref":129}},{"FM3":"Famix-Java-Entities.Invocation","id":245,"candidates":[{"ref":500}],"sender":{"ref":506},"signature":"HashMap()"},{"FM3":"Famix-Java-Entities.Method","id":246,"name":"Box","isStub":true,"kind":"constructor","parentType":{"ref":259},"signature":"Box()","visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":247,"name":"println","isStub":true,"parentType":{"ref":580},"signature":"println(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":248,"name":"Object","isStub":true,"typeContainer":{"ref":603}},{"FM3":"Famix-Java-Entities.Class","id":249,"name":"Canard","isStub":true,"typeContainer":{"ref":553}},{"FM3":"Famix-Java-Entities.Parameter","id":250,"name":"i","declaredType":{"ref":495},"parentBehaviouralEntity":{"ref":266}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":251,"element":{"ref":521},"endPos":719,"fileName":"./src/hello\\Hello.java","startPos":688},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":252,"element":{"ref":69},"endPos":4489,"fileName":"./src/hello\\Hello.java","startPos":4346},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":253,"element":{"ref":6},"endPos":3407,"fileName":"./src/hello\\Hello.java","startPos":3382},{"FM3":"Famix-Java-Entities.Invocation","id":254,"candidates":[{"ref":482}],"previous":{"ref":354},"sender":{"ref":506},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":255,"element":{"ref":66},"endPos":1506,"fileName":"./src/hello\\Hello.java","startPos":1502},{"FM3":"Famix-Java-Entities.Invocation","id":256,"candidates":[{"ref":139}],"receiver":{"ref":84},"sender":{"ref":364},"signature":"println(event + \" I''m calling \" + hello)"},{"FM3":"Famix-Java-Entities.Method","id":257,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":53},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":258,"previous":{"ref":25},"referencer":{"ref":526},"referredType":{"ref":387}},{"FM3":"Famix-Java-Entities.Class","id":259,"name":"Box","isStub":true,"typeContainer":{"ref":232}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":260,"element":{"ref":175},"endPos":3760,"fileName":"./src/hello\\Hello.java","startPos":3723},{"FM3":"Famix-Java-Entities.Attribute","id":261,"name":"A_FINAL_STRING","declaredType":{"ref":283},"isClassSide":true,"isFinal":true,"parentType":{"ref":613},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":262,"element":{"ref":180},"endPos":3827,"fileName":"./src/hello\\Hello.java","startPos":3451},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":263,"element":{"ref":68},"endPos":3801,"fileName":"./src/hello\\Hello.java","startPos":3623},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":264,"element":{"ref":172},"endPos":4627,"fileName":"./src/hello\\Hello.java","startPos":4591},{"FM3":"Famix-Java-Entities.Method","id":265,"name":"classPropertyAccess","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":1,"parentType":{"ref":104},"signature":"classPropertyAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.Method","id":266,"name":"returnNumber","cyclomaticComplexity":1,"declaredType":{"ref":495},"numberOfStatements":1,"parentType":{"ref":104},"signature":"returnNumber(int)","visibility":"private"},{"FM3":"Famix-Java-Entities.LocalVariable","id":267,"name":"i","parentBehaviouralEntity":{"ref":23}},{"FM3":"Famix-Java-Entities.Type","id":268,"name":"Button","isStub":true,"typeContainer":{"ref":543}},{"FM3":"Famix-Java-Entities.Type","id":269,"name":"ImageButton","isStub":true,"typeContainer":{"ref":438}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":270,"element":{"ref":555},"endPos":5373,"fileName":"./src/hello\\Hello.java","startPos":5175},{"FM3":"Famix-Java-Entities.Reference","id":271,"previous":{"ref":455},"referencer":{"ref":441},"referredType":{"ref":60}},{"FM3":"Famix-Java-Entities.Class","id":272,"name":"Box","isStub":true,"typeContainer":{"ref":232}},{"FM3":"Famix-Java-Entities.Class","id":273,"name":"Label","isStub":true,"typeContainer":{"ref":305}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":274,"element":{"ref":606},"endPos":3826,"fileName":"./src/hello\\Hello.java","startPos":3476},{"FM3":"Famix-Java-Entities.Invocation","id":275,"candidates":[{"ref":461}],"previous":{"ref":546},"sender":{"ref":438},"signature":"getInstance()"},{"FM3":"Famix-Java-Entities.Class","id":276,"name":"AutoCloseable","isInterface":true,"isStub":true,"typeContainer":{"ref":603},"visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":277,"candidates":[{"ref":87}],"previous":{"ref":172},"sender":{"ref":305},"signature":"addClickHandler(new ClickHandler(){
  @Override public void onClick(  ClickEvent event){
    Box db=new Box(externalIdentifier.getText(),true);
    db.show();
  }
}
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":278,"element":{"ref":63},"endPos":1329,"fileName":"./src/hello\\Hello.java","startPos":1314},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":279,"element":{"ref":496},"endPos":3115,"fileName":"./src/hello\\Hello.java","startPos":3094},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":280,"element":{"ref":596},"endPos":1764,"fileName":"./src/hello\\Hello.java","startPos":1609},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":281,"element":{"ref":567},"endPos":2008,"fileName":"./src/hello\\Hello.java","startPos":1984},{"FM3":"Famix-Java-Entities.Reference","id":282,"previous":{"ref":142},"referencer":{"ref":506},"referredType":{"ref":222}},{"FM3":"Famix-Java-Entities.Class","id":283,"name":"String","isFinal":true,"isStub":true,"typeContainer":{"ref":603},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":284,"element":{"ref":322},"endPos":1925,"fileName":"./src/hello\\Hello.java","startPos":1909},{"FM3":"Famix-Java-Entities.LocalVariable","id":285,"name":"you","declaredType":{"ref":104},"parentBehaviouralEntity":{"ref":457}},{"FM3":"Famix-Java-Entities.Method","id":286,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":0,"parentType":{"ref":47},"signature":"execute(boolean)","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":287,"element":{"ref":67},"endPos":4817,"fileName":"./src/hello\\Hello.java","startPos":4809},{"FM3":"Famix-Java-Entities.Class","id":288,"name":"Label","isStub":true,"typeContainer":{"ref":23}},{"FM3":"Famix-Java-Entities.Method","id":289,"name":"newAnonymousOfInnerClass","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":1,"parentType":{"ref":104},"signature":"newAnonymousOfInnerClass()","visibility":"private"},{"FM3":"Famix-Java-Entities.Inheritance","id":290,"subclass":{"ref":104},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":291,"element":{"ref":129},"endPos":548,"fileName":"./src/hello\\Hello.java","startPos":513},{"FM3":"Famix-Java-Entities.ParameterizedType","id":292,"name":"Comparable","isStub":true,"parameterizableClass":{"ref":201},"typeContainer":{"ref":603}},{"FM3":"Famix-Java-Entities.Method","id":293,"name":"ImageButtonTreeUtils","isStub":true,"kind":"constructor","parentType":{"ref":601},"signature":"ImageButtonTreeUtils(?,?,?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":294,"element":{"ref":489},"endPos":1724,"fileName":"./src/hello\\Hello.java","startPos":1720},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":295,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":136}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":296,"element":{"ref":258},"endPos":2681,"fileName":"./src/hello\\Hello.java","startPos":2640},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":297,"element":{"ref":217},"endPos":5151,"fileName":"./src/hello\\Hello.java","startPos":5026},{"FM3":"Famix-Java-Entities.Method","id":298,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":543},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":299,"candidates":[{"ref":178}],"previous":{"ref":56},"sender":{"ref":411},"signature":"_Anonymous(QuicksearchExempleREL)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":300,"element":{"ref":48},"endPos":3440,"fileName":"./src/hello\\Hello.java","startPos":3425},{"FM3":"Famix-Java-Entities.Access","id":301,"accessor":{"ref":506},"previous":{"ref":389},"variable":{"ref":129}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":302,"element":{"ref":105},"endPos":1754,"fileName":"./src/hello\\Hello.java","startPos":1658},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":303,"endPos":675,"fileName":"./src/hello\\Hello.java","startPos":555},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":304,"element":{"ref":221},"endPos":1268,"fileName":"./src/hello\\Hello.java","startPos":1263},{"FM3":"Famix-Java-Entities.Method","id":305,"name":"externalIdentifierMethod","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":104},"signature":"externalIdentifierMethod()","visibility":"private"},{"FM3":"Famix-Java-Entities.Reference","id":306,"previous":{"ref":395},"referencer":{"ref":364},"referredType":{"ref":346}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":307,"element":{"ref":522},"endPos":4627,"fileName":"./src/hello\\Hello.java","startPos":4570},{"FM3":"Famix-Java-Entities.Invocation","id":308,"candidates":[{"ref":57}],"previous":{"ref":537},"receiver":{"ref":129},"sender":{"ref":506},"signature":"put(\"2\",\"2\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":309,"element":{"ref":261},"endPos":105,"fileName":"./src/hello\\MyInterface.java","startPos":79},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":310,"element":{"ref":208},"endPos":2532,"fileName":"./src/hello\\Hello.java","startPos":2439},{"FM3":"Famix-Java-Entities.Access","id":311,"accessor":{"ref":506},"previous":{"ref":401},"variable":{"ref":129}},{"FM3":"Famix-Java-Entities.Invocation","id":312,"candidates":[{"ref":168}],"sender":{"ref":441},"signature":"BLLabel(\"out\")"},{"FM3":"Famix-Java-Entities.Invocation","id":313,"candidates":[{"ref":112}],"receiver":{"ref":12},"sender":{"ref":392},"signature":"call(this.classProperty)"},{"FM3":"Famix-Java-Entities.Class","id":314,"name":"BLLabel","isStub":true,"typeContainer":{"ref":132}},{"FM3":"Famix-Java-Entities.Inheritance","id":315,"subclass":{"ref":505},"superclass":{"ref":276}},{"FM3":"Famix-Java-Entities.Class","id":316,"name":"Button","isStub":true,"typeContainer":{"ref":364}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":317,"element":{"ref":150},"endPos":3258,"fileName":"./src/hello\\Hello.java","startPos":2955},{"FM3":"Famix-Java-Entities.Invocation","id":318,"candidates":[{"ref":298}],"previous":{"ref":147},"sender":{"ref":553},"signature":"_Anonymous(Button)(\"I''am a Button\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":319,"element":{"ref":507},"endPos":2504,"fileName":"./src/hello\\Hello.java","startPos":2495},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":320,"element":{"ref":325},"endPos":2221,"fileName":"./src/hello\\Hello.java","startPos":2203},{"FM3":"Famix-Java-Entities.Inheritance","id":321,"subclass":{"ref":580},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.Reference","id":322,"previous":{"ref":598},"referencer":{"ref":457},"referredType":{"ref":104}},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":323,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":611}},{"FM3":"Famix-Java-Entities.Method","id":324,"name":"String","isStub":true,"kind":"constructor","parentType":{"ref":283},"signature":"String()","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":325,"candidates":[{"ref":582}],"receiver":{"ref":574},"sender":{"ref":494},"signature":"toString()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":326,"element":{"ref":581},"endPos":972,"fileName":"./src/hello\\Hello.java","startPos":967},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":327,"element":{"ref":256},"endPos":1507,"fileName":"./src/hello\\Hello.java","startPos":1457},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":328,"element":{"ref":493},"endPos":2328,"fileName":"./src/hello\\Hello.java","startPos":2318},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":329,"element":{"ref":568},"endPos":945,"fileName":"./src/hello\\Hello.java","startPos":940},{"FM3":"Famix-Java-Entities.ParameterizedType","id":330,"name":"Map","arguments":[{"ref":283}],"isStub":true,"parameterizableClass":{"ref":7},"typeContainer":{"ref":131}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":331,"element":{"ref":583},"endPos":5265,"fileName":"./src/hello\\Hello.java","startPos":5231},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":332,"element":{"ref":160},"endPos":4998,"fileName":"./src/hello\\Hello.java","startPos":4984},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":333,"element":{"ref":53},"endPos":3257,"fileName":"./src/hello\\Hello.java","startPos":3013},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":334,"element":{"ref":282},"endPos":751,"fileName":"./src/hello\\Hello.java","startPos":740},{"FM3":"Famix-Java-Entities.Attribute","id":335,"name":"label","declaredType":{"ref":283},"parentType":{"ref":104},"visibility":"package"},{"FM3":"Famix-Java-Entities.Type","id":336,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":104}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":337,"element":{"ref":550},"endPos":1329,"fileName":"./src/hello\\Hello.java","startPos":1318},{"FM3":"Famix-Java-Entities.Inheritance","id":338,"subclass":{"ref":208},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":339,"element":{"ref":491},"endPos":3591,"fileName":"./src/hello\\Hello.java","startPos":3570},{"FM3":"Famix-Java-Entities.Method","id":340,"name":"hide","isStub":true,"parentType":{"ref":580},"signature":"hide()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":341,"element":{"ref":543},"endPos":1584,"fileName":"./src/hello\\Hello.java","startPos":1380},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":342,"element":{"ref":182},"endPos":649,"fileName":"./src/hello\\Hello.java","startPos":632},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":343,"element":{"ref":241},"endPos":3992,"fileName":"./src/hello\\Hello.java","startPos":3976},{"FM3":"Famix-Java-Entities.Method","id":344,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":0,"parentType":{"ref":208},"signature":"execute(boolean)","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":345,"element":{"ref":401},"endPos":516,"fileName":"./src/hello\\Hello.java","startPos":513},{"FM3":"Famix-Java-Entities.Class","id":346,"name":"Button","isStub":true,"typeContainer":{"ref":364}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":347,"element":{"ref":286},"endPos":1161,"fileName":"./src/hello\\Hello.java","startPos":1114},{"FM3":"Famix-Java-Entities.Method","id":348,"name":"innerHelloMethod","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":555},"signature":"innerHelloMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":349,"element":{"ref":579},"endPos":2328,"fileName":"./src/hello\\Hello.java","startPos":2314},{"FM3":"Famix-Java-Entities.Method","id":350,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":83},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":351,"element":{"ref":556},"endPos":2297,"fileName":"./src/hello\\Hello.java","startPos":2287},{"FM3":"Famix-Java-Entities.Invocation","id":352,"candidates":[{"ref":589}],"previous":{"ref":256},"sender":{"ref":364},"signature":"Button()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":353,"element":{"ref":610},"endPos":4798,"fileName":"./src/hello\\Hello.java","startPos":4756},{"FM3":"Famix-Java-Entities.Invocation","id":354,"candidates":[{"ref":211}],"previous":{"ref":618},"sender":{"ref":506},"signature":"Canard(aMap)"},{"FM3":"Famix-Java-Entities.Invocation","id":355,"candidates":[{"ref":157}],"sender":{"ref":289},"signature":"setCarrefour(new Carrefour.Oupsi(){
  @Override public void execute(  boolean bb){
  }
}
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":356,"element":{"ref":570},"endPos":2328,"fileName":"./src/hello\\Hello.java","startPos":2318},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":357,"element":{"ref":487},"endPos":1295,"fileName":"./src/hello\\Hello.java","startPos":1291},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":358,"element":{"ref":277},"endPos":4828,"fileName":"./src/hello\\Hello.java","startPos":4632},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":359,"element":{"ref":96},"endPos":1925,"fileName":"./src/hello\\Hello.java","startPos":1909},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":360,"element":{"ref":416},"endPos":4172,"fileName":"./src/hello\\Hello.java","startPos":4147},{"FM3":"Famix-Java-Entities.Method","id":361,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":578},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.Parameter","id":362,"name":"fileName","declaredType":{"ref":283},"parentBehaviouralEntity":{"ref":438}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":363,"element":{"ref":444},"endPos":719,"fileName":"./src/hello\\Hello.java","startPos":704},{"FM3":"Famix-Java-Entities.Method","id":364,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":543},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":365,"candidates":[{"ref":155}],"previous":{"ref":180},"sender":{"ref":441},"signature":"_Anonymous(Button)()"},{"FM3":"Famix-Java-Entities.Method","id":366,"name":"confirmGroupRemoval","isStub":true,"parentType":{"ref":580},"signature":"confirmGroupRemoval()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":367,"subclass":{"ref":517},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":368,"element":{"ref":116},"endPos":373,"fileName":"./src/hello\\Hello.java","startPos":369},{"FM3":"Famix-Java-Entities.Class","id":369,"name":"Label","isStub":true,"typeContainer":{"ref":23}},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":370,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":196}},{"FM3":"Famix-Java-Entities.Parameter","id":371,"name":"event","parentBehaviouralEntity":{"ref":232}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":372,"element":{"ref":308},"endPos":605,"fileName":"./src/hello\\Hello.java","startPos":588},{"FM3":"Famix-Java-Entities.Class","id":373,"name":"FilterOutputStream","isStub":true,"typeContainer":{"ref":197},"visibility":"public"},{"FM3":"Famix-Java-Entities.Inheritance","id":374,"subclass":{"ref":606},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.Invocation","id":375,"candidates":[{"ref":324}],"sender":{"ref":105},"signature":"String()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":376,"element":{"ref":593},"endPos":1287,"fileName":"./src/hello\\Hello.java","startPos":1282},{"FM3":"Famix-Java-Entities.Package","id":377,"name":"<Default Package>","isStub":true},{"FM3":"Famix-Java-Entities.Method","id":378,"name":"useThisForFieldAccess","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":4,"parentType":{"ref":104},"signature":"useThisForFieldAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.LocalVariable","id":379,"name":"lienSimple","parentBehaviouralEntity":{"ref":526}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":380,"element":{"ref":16},"endPos":1765,"fileName":"./src/hello\\Hello.java","startPos":1597},{"FM3":"Famix-Java-Entities.SourceLanguage","id":381,},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":382,"element":{"ref":13},"endPos":4798,"fileName":"./src/hello\\Hello.java","startPos":4751},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":383,"element":{"ref":9},"endPos":834,"fileName":"./src/hello\\Hello.java","startPos":823},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":384,"element":{"ref":530},"endPos":4791,"fileName":"./src/hello\\Hello.java","startPos":4764},{"FM3":"Famix-Java-Entities.Attribute","id":385,"name":"classProperty","declaredType":{"ref":495},"isClassSide":true,"parentType":{"ref":104},"visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":386,"name":"Canard","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.Class","id":387,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":526}},{"FM3":"Famix-Java-Entities.Method","id":388,"name":"_Anonymous(Carrefour.Oupsi)","isStub":true,"kind":"constructor","parentType":{"ref":208},"signature":"_Anonymous(Carrefour.Oupsi)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":389,"accessor":{"ref":506},"previous":{"ref":244},"variable":{"ref":129}},{"FM3":"Famix-Java-Entities.Inheritance","id":390,"subclass":{"ref":555},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":391,"element":{"ref":59},"endPos":1699,"fileName":"./src/hello\\Hello.java","startPos":1678},{"FM3":"Famix-Java-Entities.Method","id":392,"name":"fieldAccess","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":104},"signature":"fieldAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.Parameter","id":393,"name":"i","declaredType":{"ref":495},"parentBehaviouralEntity":{"ref":196}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":394,"element":{"ref":215},"endPos":548,"fileName":"./src/hello\\Hello.java","startPos":520},{"FM3":"Famix-Java-Entities.Reference","id":395,"previous":{"ref":86},"referencer":{"ref":364},"referredType":{"ref":122}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":396,"element":{"ref":414},"endPos":5346,"fileName":"./src/hello\\Hello.java","startPos":5330},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":397,"element":{"ref":232},"endPos":4823,"fileName":"./src/hello\\Hello.java","startPos":4690},{"FM3":"Famix-Java-Entities.Method","id":398,"name":"newAnonymousOfInnerClassFromAnonymousAndAffectation","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":1,"parentType":{"ref":104},"signature":"newAnonymousOfInnerClassFromAnonymousAndAffectation()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":399,"element":{"ref":437},"endPos":1080,"fileName":"./src/hello\\Hello.java","startPos":1070},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":400,"element":{"ref":398},"endPos":5168,"fileName":"./src/hello\\Hello.java","startPos":4895},{"FM3":"Famix-Java-Entities.Access","id":401,"accessor":{"ref":506},"isWrite":true,"variable":{"ref":129}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":402,"element":{"ref":405},"endPos":4128,"fileName":"./src/hello\\Hello.java","startPos":4103},{"FM3":"Famix-Java-Entities.Method","id":403,"name":"hello","isStub":true,"parentType":{"ref":580},"signature":"hello(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":404,"element":{"ref":285},"endPos":1925,"fileName":"./src/hello\\Hello.java","startPos":1903},{"FM3":"Famix-Java-Entities.Invocation","id":405,"candidates":[{"ref":366}],"previous":{"ref":275},"sender":{"ref":438},"signature":"confirmGroupRemoval()"},{"FM3":"Famix-Java-Entities.Access","id":406,"accessor":{"ref":136},"variable":{"ref":295}},{"FM3":"Famix-Java-Entities.Class","id":407,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":526}},{"FM3":"Famix-Java-Entities.Inheritance","id":408,"previous":{"ref":243},"subclass":{"ref":169},"superclass":{"ref":421}},{"FM3":"Famix-Java-Entities.Class","id":409,"name":"_Anonymous(BLAbstractLienSimple)","typeContainer":{"ref":526},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":410,"element":{"ref":520},"endPos":2109,"fileName":"./src/hello\\Hello.java","startPos":2099},{"FM3":"Famix-Java-Entities.Method","id":411,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":409},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.Package","id":412,"name":"constant","isStub":true,"parentPackage":{"ref":603}},{"FM3":"Famix-Java-Entities.Inheritance","id":413,"subclass":{"ref":169},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.Access","id":414,"accessor":{"ref":348},"isWrite":true,"variable":{"ref":166}},{"FM3":"Famix-Java-Entities.Method","id":415,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":113},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":416,"candidates":[{"ref":366}],"previous":{"ref":405},"sender":{"ref":438},"signature":"confirmGroupRemoval()"},{"FM3":"Famix-Java-Entities.Access","id":417,"accessor":{"ref":553},"previous":{"ref":486},"variable":{"ref":84}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":418,"element":{"ref":49},"endPos":421,"fileName":"./src/hello\\Hello.java","startPos":416},{"FM3":"Famix-Java-Entities.Class","id":419,"name":"Canard","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":420,"element":{"ref":25},"endPos":2461,"fileName":"./src/hello\\Hello.java","startPos":2454},{"FM3":"Famix-Java-Entities.Class","id":421,"name":"Flushable","isInterface":true,"isStub":true,"typeContainer":{"ref":197},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":422,"element":{"ref":389},"endPos":635,"fileName":"./src/hello\\Hello.java","startPos":632},{"FM3":"Famix-Java-Entities.Type","id":423,"name":"QuicksearchExempleREL","isStub":true,"typeContainer":{"ref":409}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":424,"element":{"ref":406},"endPos":2976,"fileName":"./src/hello\\Hello.java","startPos":2955},{"FM3":"Famix-Java-Entities.Method","id":425,"name":"_Anonymous(ClickHandler)","isStub":true,"kind":"constructor","parentType":{"ref":53},"signature":"_Anonymous(ClickHandler)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Reference","id":426,"previous":{"ref":271},"referencer":{"ref":441},"referredType":{"ref":36}},{"FM3":"Famix-Java-Entities.Method","id":427,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":109},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":428,"element":{"ref":454},"endPos":878,"fileName":"./src/hello\\Hello.java","startPos":866},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":429,"element":{"ref":557},"endPos":2532,"fileName":"./src/hello\\Hello.java","startPos":2417},{"FM3":"Famix-Java-Entities.Invocation","id":430,"candidates":[{"ref":247}],"sender":{"ref":217},"signature":"println(\"Hello stupid code\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":431,"element":{"ref":19},"endPos":5161,"fileName":"./src/hello\\Hello.java","startPos":4978},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":432,"element":{"ref":535},"endPos":358,"fileName":"./src/hello\\Hello.java","startPos":353},{"FM3":"Famix-Java-Entities.Inheritance","id":433,"previous":{"ref":39},"subclass":{"ref":283},"superclass":{"ref":622}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":434,"element":{"ref":362},"endPos":4015,"fileName":"./src/hello\\Hello.java","startPos":3995},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":435,"element":{"ref":21},"endPos":4474,"fileName":"./src/hello\\Hello.java","startPos":4417},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":436,"element":{"ref":18},"endPos":4507,"fileName":"./src/hello\\Hello.java","startPos":4187},{"FM3":"Famix-Java-Entities.Access","id":437,"accessor":{"ref":378},"isWrite":true,"previous":{"ref":46},"variable":{"ref":188}},{"FM3":"Famix-Java-Entities.Method","id":438,"name":"getMenuIcon","cyclomaticComplexity":1,"declaredType":{"ref":269},"isClassSide":true,"numberOfStatements":1,"parentType":{"ref":104},"signature":"getMenuIcon()","visibility":"private"},{"FM3":"Famix-Java-Entities.Inheritance","id":439,"subclass":{"ref":513},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":440,"element":{"ref":494},"endPos":2228,"fileName":"./src/hello\\Hello.java","startPos":2124},{"FM3":"Famix-Java-Entities.Method","id":441,"name":"doubleInsideMethod","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":3,"parentType":{"ref":104},"signature":"doubleInsideMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.Inheritance","id":442,"previous":{"ref":433},"subclass":{"ref":283},"superclass":{"ref":88}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":443,"element":{"ref":365},"endPos":3826,"fileName":"./src/hello\\Hello.java","startPos":3463},{"FM3":"Famix-Java-Entities.Reference","id":444,"previous":{"ref":215},"referencer":{"ref":506},"referredType":{"ref":198}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":445,"element":{"ref":615},"endPos":4281,"fileName":"./src/hello\\Hello.java","startPos":4234},{"FM3":"Famix-Java-Entities.Invocation","id":446,"candidates":[{"ref":458}],"sender":{"ref":526},"signature":"BLFieldSetPanel(\"Lien simple\",\"100%\")"},{"FM3":"Famix-Java-Entities.Invocation","id":447,"candidates":[{"ref":117}],"sender":{"ref":132},"signature":"BLLabel(\"inside \")"},{"FM3":"Famix-Java-Entities.Invocation","id":448,"candidates":[{"ref":427}],"sender":{"ref":503},"signature":"BLLabel(\"inside inside\")"},{"FM3":"Famix-Java-Entities.PrimitiveType","id":449,"name":"void","isStub":true},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":450,"element":{"ref":219},"endPos":751,"fileName":"./src/hello\\Hello.java","startPos":734},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":451,"element":{"ref":80},"endPos":1993,"fileName":"./src/hello\\Hello.java","startPos":1989},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":452,"element":{"ref":120},"endPos":3591,"fileName":"./src/hello\\Hello.java","startPos":3560},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":453,"element":{"ref":574},"endPos":2192,"fileName":"./src/hello\\Hello.java","startPos":2163},{"FM3":"Famix-Java-Entities.Parameter","id":454,"name":"args","declaredType":{"ref":283},"parentBehaviouralEntity":{"ref":470}},{"FM3":"Famix-Java-Entities.Reference","id":455,"previous":{"ref":605},"referencer":{"ref":257},"referredType":{"ref":27}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":456,"element":{"ref":161},"endPos":1043,"fileName":"./src/hello\\Hello.java","startPos":1033},{"FM3":"Famix-Java-Entities.Method","id":457,"name":"longNew","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":1,"parentType":{"ref":104},"signature":"longNew()","visibility":"private"},{"FM3":"Famix-Java-Entities.Method","id":458,"name":"BLFieldSetPanel","isStub":true,"kind":"constructor","parentType":{"ref":407},"signature":"BLFieldSetPanel(?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":459,"element":{"ref":142},"endPos":719,"fileName":"./src/hello\\Hello.java","startPos":704},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":460,"element":{"ref":587},"endPos":3905,"fileName":"./src/hello\\Hello.java","startPos":3891},{"FM3":"Famix-Java-Entities.Method","id":461,"name":"getInstance","isStub":true,"parentType":{"ref":580},"signature":"getInstance()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":462,"previous":{"ref":442},"subclass":{"ref":283},"superclass":{"ref":108}},{"FM3":"Famix-Java-Entities.Package","id":463,"name":"java","isStub":true},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":464,"element":{"ref":447},"endPos":3591,"fileName":"./src/hello\\Hello.java","startPos":3570},{"FM3":"Famix-Java-Entities.Reference","id":465,"previous":{"ref":33},"referencer":{"ref":575},"referredType":{"ref":564}},{"FM3":"Famix-Java-Entities.Type","id":466,"name":"Oupsi","isStub":true,"typeContainer":{"ref":104}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":467,"element":{"ref":355},"endPos":2533,"fileName":"./src/hello\\Hello.java","startPos":2392},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":468,"element":{"ref":228},"endPos":751,"fileName":"./src/hello\\Hello.java","startPos":740},{"FM3":"Famix-Java-Entities.Method","id":469,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":68},"signature":"_Anonymous(Button)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":470,"name":"main","cyclomaticComplexity":1,"declaredType":{"ref":449},"isClassSide":true,"numberOfStatements":1,"parentType":{"ref":104},"signature":"main(String[])","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":471,"candidates":[{"ref":55}],"previous":{"ref":313},"receiver":{"ref":12},"sender":{"ref":392},"signature":"call2(this.patate)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":472,"element":{"ref":455},"endPos":3048,"fileName":"./src/hello\\Hello.java","startPos":3041},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":473,"element":{"ref":127},"endPos":4698,"fileName":"./src/hello\\Hello.java","startPos":4691},{"FM3":"Famix-Java-Entities.Class","id":474,"name":"Label","isStub":true,"typeContainer":{"ref":305}},{"FM3":"Famix-Java-Entities.Inheritance","id":475,"subclass":{"ref":543},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":476,"element":{"ref":627},"endPos":4881,"fileName":"./src/hello\\Hello.java","startPos":4874},{"FM3":"Famix-Java-Entities.Access","id":477,"accessor":{"ref":506},"previous":{"ref":311},"variable":{"ref":129}},{"FM3":"Famix-Java-Entities.Method","id":478,"name":"Carrefour","isStub":true,"kind":"constructor","parentType":{"ref":154},"signature":"Carrefour()","visibility":"package"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":479,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":257}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":480,"element":{"ref":335},"endPos":391,"fileName":"./src/hello\\Hello.java","startPos":387},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":481,"element":{"ref":537},"endPos":583,"fileName":"./src/hello\\Hello.java","startPos":566},{"FM3":"Famix-Java-Entities.Method","id":482,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":386},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":483,"subclass":{"ref":83},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":484,"element":{"ref":58},"endPos":1143,"fileName":"./src/hello\\Hello.java","startPos":1134},{"FM3":"Famix-Java-Entities.Parameter","id":485,"name":"event","parentBehaviouralEntity":{"ref":364}},{"FM3":"Famix-Java-Entities.Access","id":486,"accessor":{"ref":553},"previous":{"ref":595},"variable":{"ref":116}},{"FM3":"Famix-Java-Entities.Access","id":487,"accessor":{"ref":553},"previous":{"ref":593},"variable":{"ref":116}},{"FM3":"Famix-Java-Entities.Method","id":488,"name":"getText","isStub":true,"parentType":{"ref":580},"signature":"getText()","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":489,"accessor":{"ref":105},"isWrite":true,"variable":{"ref":335}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":490,"element":{"ref":223},"endPos":1296,"fileName":"./src/hello\\Hello.java","startPos":1263},{"FM3":"Famix-Java-Entities.Reference","id":491,"previous":{"ref":426},"referencer":{"ref":132},"referredType":{"ref":199}},{"FM3":"Famix-Java-Entities.Method","id":492,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":288},"signature":"Label()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":493,"candidates":[{"ref":115}],"previous":{"ref":586},"sender":{"ref":23},"signature":"Label()"},{"FM3":"Famix-Java-Entities.Method","id":494,"name":"array","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":104},"signature":"array()","visibility":"private"},{"FM3":"Famix-Java-Entities.PrimitiveType","id":495,"name":"int","isStub":true},{"FM3":"Famix-Java-Entities.Parameter","id":496,"name":"event","parentBehaviouralEntity":{"ref":257}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":497,"element":{"ref":486},"endPos":1250,"fileName":"./src/hello\\Hello.java","startPos":1246},{"FM3":"Famix-Java-Entities.Access","id":498,"accessor":{"ref":392},"previous":{"ref":520},"variable":{"ref":535}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":499,"element":{"ref":605},"endPos":3048,"fileName":"./src/hello\\Hello.java","startPos":3041},{"FM3":"Famix-Java-Entities.Method","id":500,"name":"HashMap","isStub":true,"kind":"constructor","parentType":{"ref":608},"signature":"HashMap()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":501,"element":{"ref":56},"endPos":3302,"fileName":"./src/hello\\Hello.java","startPos":2732},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":502,"element":{"ref":8},"endPos":3531,"fileName":"./src/hello\\Hello.java","startPos":3510},{"FM3":"Famix-Java-Entities.Method","id":503,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":1,"parentType":{"ref":68},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":504,"name":"HashMap","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.Class","id":505,"name":"Closeable","isInterface":true,"isStub":true,"typeContainer":{"ref":197},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":506,"name":"<Initializer>","cyclomaticComplexity":1,"numberOfStatements":7,"parentType":{"ref":104},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.Parameter","id":507,"name":"bb","declaredType":{"ref":44},"parentBehaviouralEntity":{"ref":344}},{"FM3":"Famix-Java-Entities.Class","id":508,"name":"Canard","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":509,"element":{"ref":75},"endPos":92,"fileName":"./src/hello\\MyInterface.java","startPos":79},{"FM3":"Famix-Java-Entities.Access","id":510,"accessor":{"ref":392},"variable":{"ref":12}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":511,"element":{"ref":465},"endPos":5265,"fileName":"./src/hello\\Hello.java","startPos":5231},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":512,"element":{"ref":289},"endPos":2540,"fileName":"./src/hello\\Hello.java","startPos":2342},{"FM3":"Famix-Java-Entities.Class","id":513,"name":"_Anonymous(QuicksearchExempleREL)","typeContainer":{"ref":411},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":514,"element":{"ref":517},"endPos":5161,"fileName":"./src/hello\\Hello.java","startPos":5012},{"FM3":"Famix-Java-Entities.Invocation","id":515,"candidates":[{"ref":266}],"receiver":{"ref":64},"sender":{"ref":553},"signature":"returnNumber(5)"},{"FM3":"Famix-Java-Entities.Inheritance","id":516,"subclass":{"ref":409},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.Class","id":517,"name":"_Anonymous(Oupsi)","typeContainer":{"ref":398},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":518,"name":"_Anonymous(BLAbstractLienSimple)","isStub":true,"kind":"constructor","parentType":{"ref":409},"signature":"_Anonymous(BLAbstractLienSimple)(?,?,?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":519,"element":{"ref":275},"endPos":4076,"fileName":"./src/hello\\Hello.java","startPos":4059},{"FM3":"Famix-Java-Entities.Access","id":520,"accessor":{"ref":392},"previous":{"ref":110},"variable":{"ref":12}},{"FM3":"Famix-Java-Entities.Attribute","id":521,"name":"complexCanard","parentType":{"ref":104}},{"FM3":"Famix-Java-Entities.LocalVariable","id":522,"name":"externalIdentifier","parentBehaviouralEntity":{"ref":305}},{"FM3":"Famix-Java-Entities.Parameter","id":523,"name":"extension","declaredType":{"ref":283},"parentBehaviouralEntity":{"ref":438}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":524,"element":{"ref":348},"endPos":5367,"fileName":"./src/hello\\Hello.java","startPos":5285},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":525,"element":{"ref":30},"endPos":4173,"fileName":"./src/hello\\Hello.java","startPos":4059},{"FM3":"Famix-Java-Entities.Method","id":526,"name":"buildLienSimple","cyclomaticComplexity":1,"declaredType":{"ref":449},"numberOfStatements":2,"parentType":{"ref":104},"signature":"buildLienSimple()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":527,"element":{"ref":62},"endPos":548,"fileName":"./src/hello\\Hello.java","startPos":520},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":528,"element":{"ref":378},"endPos":1178,"fileName":"./src/hello\\Hello.java","startPos":986},{"FM3":"Famix-Java-Entities.Class","id":529,"name":"Appendable","isInterface":true,"isStub":true,"typeContainer":{"ref":603},"visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":530,"candidates":[{"ref":488}],"previous":{"ref":610},"sender":{"ref":232},"signature":"getText()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":531,"element":{"ref":130},"endPos":1787,"fileName":"./src/hello\\Hello.java","startPos":1783},{"FM3":"Famix-Java-Entities.Method","id":532,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":613},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":533,"element":{"ref":470},"endPos":908,"fileName":"./src/hello\\Hello.java","startPos":842},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":534,"element":{"ref":438},"endPos":4180,"fileName":"./src/hello\\Hello.java","startPos":3919},{"FM3":"Famix-Java-Entities.Attribute","id":535,"name":"patate","declaredType":{"ref":283},"parentType":{"ref":104},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":536,"element":{"ref":23},"endPos":2335,"fileName":"./src/hello\\Hello.java","startPos":2235},{"FM3":"Famix-Java-Entities.Invocation","id":537,"candidates":[{"ref":57}],"previous":{"ref":245},"receiver":{"ref":129},"sender":{"ref":506},"signature":"put(\"1\",\"1\")"},{"FM3":"Famix-Java-Entities.Reference","id":538,"previous":{"ref":228},"referencer":{"ref":506},"referredType":{"ref":111}},{"FM3":"Famix-Java-Entities.Invocation","id":539,"candidates":[{"ref":340}],"previous":{"ref":240},"receiver":{"ref":479},"sender":{"ref":257},"signature":"hide()"},{"FM3":"Famix-Java-Entities.Type","id":540,"name":"Canard","isStub":true,"typeContainer":{"ref":104}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":541,"element":{"ref":31},"endPos":4627,"fileName":"./src/hello\\Hello.java","startPos":4591},{"FM3":"Famix-Java-Entities.Invocation","id":542,"candidates":[{"ref":469}],"previous":{"ref":447},"sender":{"ref":132},"signature":"_Anonymous(Button)()"},{"FM3":"Famix-Java-Entities.Class","id":543,"name":"_Anonymous(Button)","typeContainer":{"ref":553},"visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":544,"name":"HashMap","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.Reference","id":545,"previous":{"ref":30},"referencer":{"ref":69},"referredType":{"ref":122}},{"FM3":"Famix-Java-Entities.Invocation","id":546,"candidates":[{"ref":293}],"sender":{"ref":438},"signature":"ImageButtonTreeUtils(i18n.confirmGroupRemoval(),path,fileName,i18n.confirmGroupRemoval())"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":547,"element":{"ref":189},"endPos":4827,"fileName":"./src/hello\\Hello.java","startPos":4685},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":548,"element":{"ref":523},"endPos":4039,"fileName":"./src/hello\\Hello.java","startPos":4018},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":549,"element":{"ref":134},"endPos":2007,"fileName":"./src/hello\\Hello.java","startPos":1989},{"FM3":"Famix-Java-Entities.Invocation","id":550,"candidates":[{"ref":181}],"previous":{"ref":223},"sender":{"ref":553},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":551,"element":{"ref":613},"endPos":109,"fileName":"./src/hello\\MyInterface.java","startPos":17},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":552,"element":{"ref":538},"endPos":834,"fileName":"./src/hello\\Hello.java","startPos":823},{"FM3":"Famix-Java-Entities.Method","id":553,"name":"test","cyclomaticComplexity":1,"declaredType":{"ref":495},"numberOfStatements":8,"parentType":{"ref":104},"signature":"test()","visibility":"public"},{"FM3":"Famix-Java-Entities.Inheritance","id":554,"subclass":{"ref":189},"superclass":{"ref":248}},{"FM3":"Famix-Java-Entities.Class","id":555,"name":"InnerHello","typeContainer":{"ref":104},"visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":556,"previous":{"ref":80},"referencer":{"ref":23},"referredType":{"ref":560}},{"FM3":"Famix-Java-Entities.Invocation","id":557,"candidates":[{"ref":388}],"previous":{"ref":355},"sender":{"ref":289},"signature":"_Anonymous(Carrefour.Oupsi)()"},{"FM3":"Famix-Java-Entities.Invocation","id":558,"candidates":[{"ref":576}],"sender":{"ref":378},"signature":"_Anonymous(Carrefour)()"},{"FM3":"Famix-Java-Entities.Inheritance","id":559,"previous":{"ref":177},"subclass":{"ref":165},"superclass":{"ref":505}},{"FM3":"Famix-Java-Entities.Class","id":560,"name":"Label","isStub":true,"typeContainer":{"ref":23}},{"FM3":"Famix-Java-Entities.LocalVariable","id":561,"name":"fspLienSimple","parentBehaviouralEntity":{"ref":526}},{"FM3":"Famix-Java-Entities.Attribute","id":562,"name":"rel","parentType":{"ref":409}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":563,"element":{"ref":553},"endPos":1794,"fileName":"./src/hello\\Hello.java","startPos":1185},{"FM3":"Famix-Java-Entities.Class","id":564,"name":"InnerAtt","isStub":true,"typeContainer":{"ref":575}},{"FM3":"Famix-Java-Entities.ParameterType","id":565,"name":"V","isStub":true,"typeContainer":{"ref":7}},{"FM3":"Famix-Java-Entities.Inheritance","id":566,"subclass":{"ref":165},"superclass":{"ref":373}},{"FM3":"Famix-Java-Entities.Invocation","id":567,"candidates":[{"ref":112}],"receiver":{"ref":103},"sender":{"ref":265},"signature":"call(Hello.classProperty)"},{"FM3":"Famix-Java-Entities.Access","id":568,"accessor":{"ref":611},"isWrite":true,"variable":{"ref":535}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":569,"element":{"ref":395},"endPos":1462,"fileName":"./src/hello\\Hello.java","startPos":1457},{"FM3":"Famix-Java-Entities.Reference","id":570,"previous":{"ref":556},"referencer":{"ref":23},"referredType":{"ref":369}},{"FM3":"Famix-Java-Entities.Class","id":571,"name":"BLLabel","isStub":true,"typeContainer":{"ref":441}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":572,"element":{"ref":485},"endPos":1436,"fileName":"./src/hello\\Hello.java","startPos":1415},{"FM3":"Famix-Java-Entities.Class","id":573,"name":"Carrefour","isStub":true,"typeContainer":{"ref":398}},{"FM3":"Famix-Java-Entities.LocalVariable","id":574,"name":"hello","declaredType":{"ref":283},"parentBehaviouralEntity":{"ref":494}},{"FM3":"Famix-Java-Entities.Method","id":575,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":555},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":576,"name":"_Anonymous(Carrefour)","isStub":true,"kind":"constructor","parentType":{"ref":47},"signature":"_Anonymous(Carrefour)()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":577,"element":{"ref":205},"endPos":4827,"fileName":"./src/hello\\Hello.java","startPos":4667},{"FM3":"Famix-Java-Entities.Class","id":578,"name":"Canard","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.LocalVariable","id":579,"name":"j","parentBehaviouralEntity":{"ref":23}},{"FM3":"Famix-Java-Entities.Class","id":580,"name":"<StubMethodContainer>","isStub":true,"typeContainer":{"ref":377}},{"FM3":"Famix-Java-Entities.Invocation","id":581,"candidates":[{"ref":553}],"receiver":{"ref":323},"sender":{"ref":611},"signature":"test()"},{"FM3":"Famix-Java-Entities.Method","id":582,"name":"toString","declaredType":{"ref":283},"isStub":true,"parentType":{"ref":283},"signature":"toString()","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":583,"candidates":[{"ref":225}],"previous":{"ref":430},"sender":{"ref":575},"signature":"InnerAtt(\"Période de validité\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":584,"element":{"ref":590},"endPos":5265,"fileName":"./src/hello\\Hello.java","startPos":5231},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":585,"element":{"ref":558},"endPos":1171,"fileName":"./src/hello\\Hello.java","startPos":1084},{"FM3":"Famix-Java-Entities.Invocation","id":586,"candidates":[{"ref":492}],"sender":{"ref":23},"signature":"Label()"},{"FM3":"Famix-Java-Entities.Invocation","id":587,"candidates":[{"ref":11}],"sender":{"ref":22},"signature":"BLLabel(\"\")"},{"FM3":"Famix-Java-Entities.Method","id":588,"name":"println","declaredType":{"ref":449},"isStub":true,"parentType":{"ref":165},"signature":"println(String)","visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":589,"name":"Button","isStub":true,"kind":"constructor","parentType":{"ref":316},"signature":"Button()","visibility":"package"},{"FM3":"Famix-Java-Entities.Reference","id":590,"previous":{"ref":465},"referencer":{"ref":575},"referredType":{"ref":212}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":591,"element":{"ref":586},"endPos":2297,"fileName":"./src/hello\\Hello.java","startPos":2287},{"FM3":"Famix-Java-Entities.Parameter","id":592,"name":"event","parentBehaviouralEntity":{"ref":69}},{"FM3":"Famix-Java-Entities.Access","id":593,"accessor":{"ref":553},"previous":{"ref":417},"variable":{"ref":535}},{"FM3":"Famix-Java-Entities.Class","id":594,"name":"Canard","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.Access","id":595,"accessor":{"ref":553},"isWrite":true,"variable":{"ref":116}},{"FM3":"Famix-Java-Entities.Invocation","id":596,"candidates":[{"ref":218}],"previous":{"ref":16},"sender":{"ref":553},"signature":"_Anonymous(Button)(\"I''am another Button\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":597,"element":{"ref":33},"endPos":4998,"fileName":"./src/hello\\Hello.java","startPos":4984},{"FM3":"Famix-Java-Entities.Reference","id":598,"previous":{"ref":192},"referencer":{"ref":105},"referredType":{"ref":283}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":599,"element":{"ref":83},"endPos":4499,"fileName":"./src/hello\\Hello.java","startPos":4332},{"FM3":"Famix-Java-Entities.Method","id":600,"name":"setWidget","isStub":true,"parentType":{"ref":580},"signature":"setWidget(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":601,"name":"ImageButtonTreeUtils","isStub":true,"typeContainer":{"ref":438}},{"FM3":"Famix-Java-Entities.AnnotationInstance","id":602,"annotatedEntity":{"ref":441},"annotationType":{"ref":27}},{"FM3":"Famix-Java-Entities.Package","id":603,"name":"lang","isStub":true,"parentPackage":{"ref":463}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":604,"element":{"ref":513},"endPos":3291,"fileName":"./src/hello\\Hello.java","startPos":2915},{"FM3":"Famix-Java-Entities.Reference","id":605,"previous":{"ref":258},"referencer":{"ref":257},"referredType":{"ref":27}},{"FM3":"Famix-Java-Entities.Class","id":606,"name":"_Anonymous(Button)","typeContainer":{"ref":441},"visibility":"package"},{"FM3":"Famix-Java-Entities.Package","id":607,"name":"hello"},{"FM3":"Famix-Java-Entities.Class","id":608,"name":"HashMap","isStub":true,"typeContainer":{"ref":506}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":609,"element":{"ref":417},"endPos":1272,"fileName":"./src/hello\\Hello.java","startPos":1263},{"FM3":"Famix-Java-Entities.Invocation","id":610,"candidates":[{"ref":246}],"sender":{"ref":232},"signature":"Box(externalIdentifier.getText(),true)"},{"FM3":"Famix-Java-Entities.Method","id":611,"name":"Hello","cyclomaticComplexity":1,"kind":"constructor","numberOfStatements":3,"parentType":{"ref":104},"signature":"Hello()","visibility":"public"},{"FM3":"Famix-Java-Entities.Type","id":612,"name":"BLAbstractLienSimple","isStub":true,"typeContainer":{"ref":104}},{"FM3":"Famix-Java-Entities.Class","id":613,"name":"MyInterface","isInterface":true,"typeContainer":{"ref":607},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":614,"element":{"ref":132},"endPos":3816,"fileName":"./src/hello\\Hello.java","startPos":3490},{"FM3":"Famix-Java-Entities.LocalVariable","id":615,"name":"someLocalVariableDefineInExternalScope","declaredType":{"ref":283},"parentBehaviouralEntity":{"ref":18}},{"FM3":"Famix-Java-Entities.Class","id":616,"name":"BLLabel","isStub":true,"typeContainer":{"ref":22}},{"FM3":"Famix-Java-Entities.Access","id":617,"accessor":{"ref":69},"variable":{"ref":84}},{"FM3":"Famix-Java-Entities.Invocation","id":618,"candidates":[{"ref":57}],"previous":{"ref":182},"receiver":{"ref":129},"sender":{"ref":506},"signature":"put(\"5\",\"5\")"},{"FM3":"Famix-Java-Entities.Reference","id":619,"previous":{"ref":99},"referencer":{"ref":22},"referredType":{"ref":145}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":620,"element":{"ref":344},"endPos":2522,"fileName":"./src/hello\\Hello.java","startPos":2453},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":621,"element":{"ref":106},"endPos":1559,"fileName":"./src/hello\\Hello.java","startPos":1533},{"FM3":"Famix-Java-Entities.Class","id":622,"name":"CharSequence","isInterface":true,"isStub":true,"typeContainer":{"ref":603},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":623,"name":"_Anonymous(ClickHandler)","isStub":true,"kind":"constructor","parentType":{"ref":189},"signature":"_Anonymous(ClickHandler)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":624,"candidates":[{"ref":415}],"previous":{"ref":312},"sender":{"ref":441},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":625,"element":{"ref":119},"endPos":780,"fileName":"./src/hello\\Hello.java","startPos":776},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":626,"element":{"ref":457},"endPos":1932,"fileName":"./src/hello\\Hello.java","startPos":1864},{"FM3":"Famix-Java-Entities.Invocation","id":627,"candidates":[{"ref":403}],"receiver":{"ref":370},"sender":{"ref":196},"signature":"hello(i)"}]'
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
