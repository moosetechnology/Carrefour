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
	^ '[{"FM3":"Famix-Java-Entities.Method","id":1,"name":"onInternalMethod","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":1,"parentType":{"ref":222},"signature":"onInternalMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":2,"element":{"ref":256},"endPos":5277,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5276},{"FM3":"Famix-Java-Entities.Class","id":3,"name":"Number","isAbstract":true,"isStub":true,"typeContainer":{"ref":273},"visibility":"public"},{"FM3":"Famix-Java-Entities.Access","id":4,"accessor":{"ref":475},"variable":{"ref":591}},{"FM3":"Famix-Java-Entities.Access","id":5,"accessor":{"ref":1},"variable":{"ref":372}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":6,"element":{"ref":204},"endPos":3768,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3251},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":7,"element":{"ref":568},"endPos":652,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":649},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":8,"element":{"ref":309},"endPos":1077,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1068},{"FM3":"Famix-Java-Entities.Inheritance","id":9,"subclass":{"ref":365},"superclass":{"ref":258}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":10,"element":{"ref":557},"endPos":4408,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4351},{"FM3":"Famix-Java-Entities.Reference","id":11,"previous":{"ref":565},"referencer":{"ref":596},"referredType":{"ref":469}},{"FM3":"Famix-Java-Entities.Invocation","id":12,"candidates":[{"ref":634}],"previous":{"ref":482},"sender":{"ref":228},"signature":"_Anonymous(QuicksearchExempleREL)()"},{"FM3":"Famix-Java-Entities.Type","id":13,"name":"Label","isStub":true,"typeContainer":{"ref":279}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":14,"element":{"ref":52},"endPos":2438,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2429},{"FM3":"Famix-Java-Entities.Inheritance","id":15,"subclass":{"ref":480},"superclass":{"ref":45}},{"FM3":"Famix-Java-Entities.Attribute","id":16,"name":"aMap","declaredType":{"ref":417},"isClassSide":true,"isFinal":true,"parentType":{"ref":279},"visibility":"private"},{"FM3":"Famix-Java-Entities.Inheritance","id":17,"previous":{"ref":9},"subclass":{"ref":365},"superclass":{"ref":611}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":18,"element":{"ref":447},"endPos":3846,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3775},{"FM3":"Famix-Java-Entities.Invocation","id":19,"candidates":[{"ref":428}],"receiver":{"ref":175},"sender":{"ref":380},"signature":"returnNumber(5)"},{"FM3":"Famix-Java-Entities.Reference","id":20,"previous":{"ref":82},"referencer":{"ref":566},"referredType":{"ref":279}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":21,"element":{"ref":613},"endPos":4107,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3993},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":22,"element":{"ref":490},"endPos":3907,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3892},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":23,"element":{"ref":637},"endPos":3341,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3324},{"FM3":"Famix-Java-Entities.Class","id":24,"name":"Canard","isStub":true,"typeContainer":{"ref":204}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":25,"element":{"ref":519},"endPos":1518,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1314},{"FM3":"Famix-Java-Entities.Parameter","id":26,"name":"args","declaredType":{"ref":344},"parentBehaviouralEntity":{"ref":566}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":27,"element":{"ref":237},"endPos":4796,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4792},{"FM3":"Famix-Java-Entities.Class","id":28,"name":"Carrefour","isStub":true,"typeContainer":{"ref":46}},{"FM3":"Famix-Java-Entities.Inheritance","id":29,"subclass":{"ref":83},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Invocation","id":30,"candidates":[{"ref":470}],"sender":{"ref":174},"signature":"println(\"Hello stupid code\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":31,"element":{"ref":169},"endPos":3374,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3363},{"FM3":"Famix-Java-Entities.Reference","id":32,"previous":{"ref":567},"referencer":{"ref":546},"referredType":{"ref":503}},{"FM3":"Famix-Java-Entities.Access","id":33,"accessor":{"ref":380},"previous":{"ref":219},"variable":{"ref":372}},{"FM3":"Famix-Java-Entities.Type","id":34,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":279}},{"FM3":"Famix-Java-Entities.Inheritance","id":35,"previous":{"ref":310},"subclass":{"ref":412},"superclass":{"ref":492}},{"FM3":"Famix-Java-Entities.Reference","id":36,"previous":{"ref":39},"referencer":{"ref":333},"referredType":{"ref":279}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":37,"element":{"ref":377},"endPos":3142,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3137},{"FM3":"Famix-Java-Entities.Method","id":38,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":392},"signature":"Canard(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Reference","id":39,"previous":{"ref":461},"referencer":{"ref":573},"referredType":{"ref":344}},{"FM3":"Famix-Java-Entities.Attribute","id":40,"name":"c7","parentType":{"ref":279}},{"FM3":"Famix-Java-Entities.Access","id":41,"accessor":{"ref":239},"isWrite":true,"variable":{"ref":414}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":42,"endPos":609,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":489},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":43,"element":{"ref":26},"endPos":812,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":800},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":44,"element":{"ref":202},"endPos":4732,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4690},{"FM3":"Famix-Java-Entities.Class","id":45,"name":"AutoCloseable","isInterface":true,"isStub":true,"typeContainer":{"ref":273},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":46,"name":"newAnonymousOfInnerClassFromAnonymousAndAffectation","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":1,"parentType":{"ref":279},"signature":"newAnonymousOfInnerClassFromAnonymousAndAffectation()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":47,"element":{"ref":144},"endPos":5095,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4912},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":48,"element":{"ref":636},"endPos":4814,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4814},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":49,"element":{"ref":11},"endPos":685,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":674},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":50,"element":{"ref":437},"endPos":1949,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1873},{"FM3":"Famix-Java-Entities.Class","id":51,"name":"_Anonymous(ClickHandler)","typeContainer":{"ref":608},"visibility":"package"},{"FM3":"Famix-Java-Entities.Parameter","id":52,"name":"bb","declaredType":{"ref":364},"parentBehaviouralEntity":{"ref":409}},{"FM3":"Famix-Java-Entities.Class","id":53,"name":"Serializable","isInterface":true,"isStub":true,"typeContainer":{"ref":553},"visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":54,"candidates":[{"ref":540}],"previous":{"ref":479},"sender":{"ref":380},"signature":"_Anonymous(Button)(\"I''am another Button\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":55,"element":{"ref":4},"endPos":4068,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4065},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":56,"element":{"ref":222},"endPos":4433,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4266},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":57,"element":{"ref":182},"endPos":312,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":300},{"FM3":"Famix-Java-Entities.Class","id":58,"name":"Label","isStub":true,"typeContainer":{"ref":105}},{"FM3":"Famix-Java-Entities.Inheritance","id":59,"subclass":{"ref":51},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":60,"element":{"ref":538},"endPos":2141,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2137},{"FM3":"Famix-Java-Entities.Invocation","id":61,"candidates":[{"ref":570}],"previous":{"ref":621},"sender":{"ref":421},"signature":"_Anonymous(ClickHandler)()"},{"FM3":"Famix-Java-Entities.Attribute","id":62,"name":"rel","parentType":{"ref":72}},{"FM3":"Famix-Java-Entities.Access","id":63,"accessor":{"ref":380},"isWrite":true,"variable":{"ref":210}},{"FM3":"Famix-Java-Entities.Access","id":64,"accessor":{"ref":380},"previous":{"ref":33},"variable":{"ref":414}},{"FM3":"Famix-Java-Entities.Class","id":65,"name":"BLLabel","isStub":true,"typeContainer":{"ref":447}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":66,"element":{"ref":409},"endPos":2456,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2387},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":67,"element":{"ref":106},"endPos":3341,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3324},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":68,"element":{"ref":505},"endPos":4107,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3993},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":69,"element":{"ref":168},"endPos":3465,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3444},{"FM3":"Famix-Java-Entities.Access","id":70,"accessor":{"ref":333},"isWrite":true,"variable":{"ref":478}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":71,"element":{"ref":380},"endPos":1728,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1119},{"FM3":"Famix-Java-Entities.Class","id":72,"name":"_Anonymous(BLAbstractLienSimple)","typeContainer":{"ref":253},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":73,"element":{"ref":475},"endPos":4114,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3853},{"FM3":"Famix-Java-Entities.Inheritance","id":74,"subclass":{"ref":222},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":75,"element":{"ref":183},"endPos":5095,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4946},{"FM3":"Famix-Java-Entities.PrimitiveType","id":76,"name":"void","isStub":true},{"FM3":"Famix-Java-Entities.Type","id":77,"name":"ImageButton","isStub":true,"typeContainer":{"ref":475}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":78,"element":{"ref":369},"endPos":5208,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5206},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":79,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":437}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":80,"element":{"ref":41},"endPos":879,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":874},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":81,"element":{"ref":624},"endPos":3525,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3494},{"FM3":"Famix-Java-Entities.Reference","id":82,"previous":{"ref":94},"referencer":{"ref":596},"referredType":{"ref":291}},{"FM3":"Famix-Java-Entities.Class","id":83,"name":"OutputStream","isAbstract":true,"isStub":true,"typeContainer":{"ref":553},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":84,"element":{"ref":459},"endPos":4672,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4657},{"FM3":"Famix-Java-Entities.Method","id":85,"name":"array","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":279},"signature":"array()","visibility":"private"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":86,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":381}},{"FM3":"Famix-Java-Entities.Package","id":87,"name":"util","isStub":true,"parentPackage":{"ref":583}},{"FM3":"Famix-Java-Entities.Class","id":88,"name":"Label","isStub":true,"typeContainer":{"ref":608}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":89,"element":{"ref":231},"endPos":1673,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1662},{"FM3":"Famix-Java-Entities.Type","id":90,"name":"Carrefour","isStub":true,"typeContainer":{"ref":279}},{"FM3":"Famix-Java-Entities.Method","id":91,"name":"call","isStub":true,"parentType":{"ref":98},"signature":"call(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":92,"element":{"ref":528},"endPos":1263,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1248},{"FM3":"Famix-Java-Entities.ParameterizableClass","id":93,"name":"Map","isInterface":true,"isStub":true,"typeContainer":{"ref":87},"visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":94,"previous":{"ref":11},"referencer":{"ref":596},"referredType":{"ref":612}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":95,"element":{"ref":522},"endPos":1400,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1391},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":96,"element":{"ref":420},"endPos":3225,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2849},{"FM3":"Famix-Java-Entities.Class","id":97,"name":"Label","isStub":true,"typeContainer":{"ref":608}},{"FM3":"Famix-Java-Entities.Class","id":98,"name":"<StubMethodContainer>","isStub":true,"typeContainer":{"ref":376}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":99,"element":{"ref":635},"endPos":1721,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1717},{"FM3":"Famix-Java-Entities.Access","id":100,"accessor":{"ref":108},"previous":{"ref":569},"variable":{"ref":182}},{"FM3":"Famix-Java-Entities.Parameter","id":101,"name":"event","parentBehaviouralEntity":{"ref":426}},{"FM3":"Famix-Java-Entities.Reference","id":102,"previous":{"ref":20},"referencer":{"ref":380},"referredType":{"ref":590}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":103,"element":{"ref":64},"endPos":1221,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1216},{"FM3":"Famix-Java-Entities.Method","id":104,"name":"setWidget","isStub":true,"parentType":{"ref":98},"signature":"setWidget(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":105,"name":"doubleAffectation","cyclomaticComplexity":1,"declaredType":{"ref":529},"numberOfStatements":2,"parentType":{"ref":279},"signature":"doubleAffectation()","visibility":"private"},{"FM3":"Famix-Java-Entities.Invocation","id":106,"candidates":[{"ref":363}],"sender":{"ref":204},"signature":"BLLabel(\"out\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":107,"element":{"ref":127},"endPos":2615,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2574},{"FM3":"Famix-Java-Entities.Method","id":108,"name":"fieldAccess","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":279},"signature":"fieldAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.Invocation","id":109,"candidates":[{"ref":104}],"previous":{"ref":393},"sender":{"ref":380},"signature":"setWidget(new Button(\"I''am a Button\"){
  public void onClick(  final ClickEvent event){
    System.out.println(event + \" I''m calling \" + hello);
    Button innertButton=new Button();
  }
}
)"},{"FM3":"Famix-Java-Entities.Method","id":110,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":181},"signature":"Label()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":111,"element":{"ref":516},"endPos":768,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":757},{"FM3":"Famix-Java-Entities.Invocation","id":112,"candidates":[{"ref":238}],"previous":{"ref":109},"sender":{"ref":380},"signature":"_Anonymous(Button)(\"I''am a Button\")"},{"FM3":"Famix-Java-Entities.Method","id":113,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":51},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":114,"name":"_Anonymous(Carrefour.Oupsi)","isStub":true,"kind":"constructor","parentType":{"ref":548},"signature":"_Anonymous(Carrefour.Oupsi)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":115,"subclass":{"ref":183},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":116,"element":{"ref":317},"endPos":2231,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2217},{"FM3":"Famix-Java-Entities.Access","id":117,"accessor":{"ref":596},"previous":{"ref":191},"variable":{"ref":16}},{"FM3":"Famix-Java-Entities.Reference","id":118,"previous":{"ref":171},"referencer":{"ref":596},"referredType":{"ref":639}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":119,"element":{"ref":94},"endPos":768,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":757},{"FM3":"Famix-Java-Entities.Method","id":120,"name":"getInstance","isStub":true,"parentType":{"ref":98},"signature":"getInstance()","visibility":"package"},{"FM3":"Famix-Java-Entities.LocalVariable","id":121,"name":"db","parentBehaviouralEntity":{"ref":113}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":122,"element":{"ref":121},"endPos":4732,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4685},{"FM3":"Famix-Java-Entities.Class","id":123,"name":"BLLabel","isStub":true,"typeContainer":{"ref":447}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":124,"element":{"ref":191},"endPos":450,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":447},{"FM3":"Famix-Java-Entities.Access","id":125,"accessor":{"ref":108},"previous":{"ref":100},"variable":{"ref":165}},{"FM3":"Famix-Java-Entities.Reference","id":126,"previous":{"ref":272},"referencer":{"ref":253},"referredType":{"ref":454}},{"FM3":"Famix-Java-Entities.Invocation","id":127,"candidates":[{"ref":563}],"sender":{"ref":253},"signature":"BLFieldSetPanel(\"Lien simple\",\"100%\")"},{"FM3":"Famix-Java-Entities.Reference","id":128,"previous":{"ref":274},"referencer":{"ref":608},"referredType":{"ref":97}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":129,"element":{"ref":100},"endPos":2015,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1998},{"FM3":"Famix-Java-Entities.ParameterizedType","id":130,"name":"Comparable","isStub":true,"parameterizableClass":{"ref":524},"typeContainer":{"ref":273}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":131,"element":{"ref":138},"endPos":2231,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2221},{"FM3":"Famix-Java-Entities.Inheritance","id":132,"previous":{"ref":177},"subclass":{"ref":83},"superclass":{"ref":329}},{"FM3":"Famix-Java-Entities.Method","id":133,"name":"Integer","isStub":true,"kind":"constructor","parentType":{"ref":412},"signature":"Integer(int)","visibility":"public"},{"FM3":"Famix-Java-Entities.Access","id":134,"accessor":{"ref":230},"isWrite":true,"variable":{"ref":325}},{"FM3":"Famix-Java-Entities.Package","id":135,"name":"constant","isStub":true,"parentPackage":{"ref":273}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":136,"element":{"ref":272},"endPos":2262,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2252},{"FM3":"Famix-Java-Entities.Inheritance","id":137,"previous":{"ref":507},"subclass":{"ref":3},"superclass":{"ref":53}},{"FM3":"Famix-Java-Entities.Reference","id":138,"previous":{"ref":36},"referencer":{"ref":105},"referredType":{"ref":403}},{"FM3":"Famix-Java-Entities.Class","id":139,"name":"BLLabel","isStub":true,"typeContainer":{"ref":204}},{"FM3":"Famix-Java-Entities.Invocation","id":140,"candidates":[{"ref":205}],"sender":{"ref":596},"signature":"HashMap()"},{"FM3":"Famix-Java-Entities.Invocation","id":141,"candidates":[{"ref":620}],"sender":{"ref":381},"signature":"_Anonymous(Carrefour)()"},{"FM3":"Famix-Java-Entities.Class","id":142,"name":"Label","isStub":true,"typeContainer":{"ref":105}},{"FM3":"Famix-Java-Entities.Method","id":143,"name":"show","isStub":true,"parentType":{"ref":98},"signature":"show()","visibility":"package"},{"FM3":"Famix-Java-Entities.LocalVariable","id":144,"name":"oup","parentBehaviouralEntity":{"ref":46}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":145,"element":{"ref":482},"endPos":3236,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2666},{"FM3":"Famix-Java-Entities.Invocation","id":146,"candidates":[{"ref":239}],"sender":{"ref":333},"signature":"Hello()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":147,"element":{"ref":596},"endPos":738,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":693},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":148,"element":{"ref":164},"endPos":4010,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3993},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":149,"element":{"ref":263},"endPos":2262,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2252},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":150,"element":{"ref":5},"endPos":4360,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4351},{"FM3":"Famix-Java-Entities.Inheritance","id":151,"subclass":{"ref":279},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Invocation","id":152,"candidates":[{"ref":311}],"previous":{"ref":299},"sender":{"ref":608},"signature":"_Anonymous(ClickHandler)()"},{"FM3":"Famix-Java-Entities.Inheritance","id":153,"subclass":{"ref":548},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Invocation","id":154,"candidates":[{"ref":508}],"previous":{"ref":164},"sender":{"ref":475},"signature":"confirmGroupRemoval()"},{"FM3":"Famix-Java-Entities.Access","id":155,"accessor":{"ref":596},"isWrite":true,"previous":{"ref":568},"variable":{"ref":429}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":156,"element":{"ref":275},"endPos":3374,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3363},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":157,"element":{"ref":405},"endPos":3694,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3667},{"FM3":"Famix-Java-Entities.Class","id":158,"name":"Canard","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":159,"element":{"ref":268},"endPos":4815,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4808},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":160,"element":{"ref":573},"endPos":1688,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1592},{"FM3":"Famix-Java-Entities.Invocation","id":161,"candidates":[{"ref":592}],"receiver":{"ref":163},"sender":{"ref":85},"signature":"toString()"},{"FM3":"Famix-Java-Entities.Invocation","id":162,"candidates":[{"ref":513}],"previous":{"ref":487},"receiver":{"ref":16},"sender":{"ref":596},"signature":"put(\"4\",\"4\")"},{"FM3":"Famix-Java-Entities.LocalVariable","id":163,"name":"hello","declaredType":{"ref":344},"parentBehaviouralEntity":{"ref":85}},{"FM3":"Famix-Java-Entities.Invocation","id":164,"candidates":[{"ref":120}],"previous":{"ref":505},"sender":{"ref":475},"signature":"getInstance()"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":165,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":108}},{"FM3":"Famix-Java-Entities.Invocation","id":166,"candidates":[{"ref":104}],"previous":{"ref":275},"sender":{"ref":204},"signature":"setWidget(new Button(){
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
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":167,"element":{"ref":203},"endPos":4434,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4226},{"FM3":"Famix-Java-Entities.Parameter","id":168,"name":"event","parentBehaviouralEntity":{"ref":303}},{"FM3":"Famix-Java-Entities.Reference","id":169,"previous":{"ref":637},"referencer":{"ref":204},"referredType":{"ref":270}},{"FM3":"Famix-Java-Entities.Invocation","id":170,"candidates":[{"ref":587}],"previous":{"ref":460},"sender":{"ref":596},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.Reference","id":171,"previous":{"ref":243},"referencer":{"ref":596},"referredType":{"ref":619}},{"FM3":"Famix-Java-Entities.Method","id":172,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":142},"signature":"Label()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":173,"candidates":[{"ref":239}],"sender":{"ref":566},"signature":"Hello()"},{"FM3":"Famix-Java-Entities.Method","id":174,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":1,"parentType":{"ref":183},"signature":"execute()","visibility":"public"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":175,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":380}},{"FM3":"Famix-Java-Entities.Access","id":176,"accessor":{"ref":1},"previous":{"ref":5},"variable":{"ref":440}},{"FM3":"Famix-Java-Entities.Inheritance","id":177,"previous":{"ref":29},"subclass":{"ref":83},"superclass":{"ref":480}},{"FM3":"Famix-Java-Entities.AnnotationInstance","id":178,"annotatedEntity":{"ref":204},"annotationType":{"ref":411}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":179,"element":{"ref":393},"endPos":1263,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1252},{"FM3":"Famix-Java-Entities.Type","id":180,"name":"Canard","isStub":true,"typeContainer":{"ref":279}},{"FM3":"Famix-Java-Entities.Class","id":181,"name":"Label","isStub":true,"typeContainer":{"ref":105}},{"FM3":"Famix-Java-Entities.Attribute","id":182,"name":"classProperty","declaredType":{"ref":529},"isClassSide":true,"parentType":{"ref":279},"visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":183,"name":"_Anonymous(Oupsi)","typeContainer":{"ref":46},"visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":184,"subclass":{"ref":72},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":185,"element":{"ref":33},"endPos":1206,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1197},{"FM3":"Famix-Java-Entities.LocalVariable","id":186,"name":"label42","parentBehaviouralEntity":{"ref":546}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":187,"element":{"ref":243},"endPos":482,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":454},{"FM3":"Famix-Java-Entities.ParameterType","id":188,"name":"V","isStub":true,"typeContainer":{"ref":93}},{"FM3":"Famix-Java-Entities.Class","id":189,"name":"ImageButtonTreeUtils","isStub":true,"typeContainer":{"ref":475}},{"FM3":"Famix-Java-Entities.ParameterizedType","id":190,"name":"Comparable","isStub":true,"parameterizableClass":{"ref":524},"typeContainer":{"ref":273}},{"FM3":"Famix-Java-Entities.Access","id":191,"accessor":{"ref":596},"isWrite":true,"variable":{"ref":16}},{"FM3":"Famix-Java-Entities.Inheritance","id":192,"subclass":{"ref":420},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Class","id":193,"name":"CharSequence","isInterface":true,"isStub":true,"typeContainer":{"ref":273},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":194,"element":{"ref":241},"endPos":3949,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3929},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":195,"element":{"ref":325},"endPos":5181,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5162},{"FM3":"Famix-Java-Entities.Class","id":196,"name":"Canard","isStub":true,"typeContainer":{"ref":380}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":197,"element":{"ref":502},"endPos":3839,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3825},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":198,"element":{"ref":401},"endPos":92,"fileName":".\\testing\\src\\hello\\MyInterface.java","startPos":79},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":199,"element":{"ref":126},"endPos":2615,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2574},{"FM3":"Famix-Java-Entities.Type","id":200,"name":"BLLabel","isStub":true,"typeContainer":{"ref":279}},{"FM3":"Famix-Java-Entities.Invocation","id":201,"candidates":[{"ref":295}],"sender":{"ref":447},"signature":"BLLabel(\"\")"},{"FM3":"Famix-Java-Entities.Invocation","id":202,"candidates":[{"ref":622}],"sender":{"ref":113},"signature":"Box(externalIdentifier.getText(),true)"},{"FM3":"Famix-Java-Entities.Invocation","id":203,"candidates":[{"ref":104}],"sender":{"ref":598},"signature":"setWidget(new Button(\"I''am a Button\"){
  public void onInternalMethod(  final ClickEvent event){
    System.out.println(someLocalVariableDefineInExternalScope);
  }
}
)"},{"FM3":"Famix-Java-Entities.Method","id":204,"name":"doubleInsideMethod","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":3,"parentType":{"ref":279},"signature":"doubleInsideMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":205,"name":"HashMap","isStub":true,"kind":"constructor","parentType":{"ref":404},"signature":"HashMap()","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":206,"name":"BLLabel","isStub":true,"typeContainer":{"ref":303}},{"FM3":"Famix-Java-Entities.Inheritance","id":207,"previous":{"ref":499},"subclass":{"ref":344},"superclass":{"ref":193}},{"FM3":"Famix-Java-Entities.Invocation","id":208,"candidates":[{"ref":513}],"previous":{"ref":140},"receiver":{"ref":16},"sender":{"ref":596},"signature":"put(\"1\",\"1\")"},{"FM3":"Famix-Java-Entities.Inheritance","id":209,"subclass":{"ref":468},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Attribute","id":210,"name":"hello","declaredType":{"ref":529},"parentType":{"ref":279},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":211,"element":{"ref":134},"endPos":5163,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5162},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":212,"element":{"ref":567},"endPos":3525,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3504},{"FM3":"Famix-Java-Entities.Method","id":213,"name":"println","declaredType":{"ref":76},"isStub":true,"parentType":{"ref":365},"signature":"println(String)","visibility":"public"},{"FM3":"Famix-Java-Entities.LocalVariable","id":214,"name":"lienSimple","parentBehaviouralEntity":{"ref":253}},{"FM3":"Famix-Java-Entities.Class","id":215,"name":"Canard","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.Inheritance","id":216,"previous":{"ref":207},"subclass":{"ref":344},"superclass":{"ref":492}},{"FM3":"Famix-Java-Entities.Method","id":217,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":610},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":218,"name":"hello","isStub":true,"parentType":{"ref":98},"signature":"hello(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":219,"accessor":{"ref":380},"previous":{"ref":63},"variable":{"ref":210}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":220,"element":{"ref":426},"endPos":1508,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1329},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":221,"element":{"ref":569},"endPos":2015,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1998},{"FM3":"Famix-Java-Entities.Class","id":222,"name":"_Anonymous(Button)","typeContainer":{"ref":598},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":223,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":222},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":224,"name":"BLLabel","isStub":true,"typeContainer":{"ref":204}},{"FM3":"Famix-Java-Entities.LocalVariable","id":225,"name":"nb2","declaredType":{"ref":412},"parentBehaviouralEntity":{"ref":230}},{"FM3":"Famix-Java-Entities.Inheritance","id":226,"previous":{"ref":533},"subclass":{"ref":344},"superclass":{"ref":53}},{"FM3":"Famix-Java-Entities.Invocation","id":227,"candidates":[{"ref":91}],"receiver":{"ref":165},"sender":{"ref":108},"signature":"call(this.classProperty)"},{"FM3":"Famix-Java-Entities.Method","id":228,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":72},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":229,"subclass":{"ref":265},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Method","id":230,"name":"invocInSwitch","cyclomaticComplexity":6,"declaredType":{"ref":76},"numberOfStatements":8,"parentType":{"ref":279},"signature":"invocInSwitch()","visibility":"private"},{"FM3":"Famix-Java-Entities.Invocation","id":231,"candidates":[{"ref":308}],"sender":{"ref":573},"signature":"String()"},{"FM3":"Famix-Java-Entities.Class","id":232,"name":"Box","isStub":true,"typeContainer":{"ref":113}},{"FM3":"Famix-Java-Entities.Method","id":233,"name":"call2","isStub":true,"parentType":{"ref":98},"signature":"call2(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":234,"element":{"ref":1},"endPos":4423,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4280},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":235,"element":{"ref":479},"endPos":1699,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1531},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":236,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":421}},{"FM3":"Famix-Java-Entities.Parameter","id":237,"name":"i","declaredType":{"ref":529},"parentBehaviouralEntity":{"ref":345}},{"FM3":"Famix-Java-Entities.Method","id":238,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":519},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":239,"name":"Hello","cyclomaticComplexity":1,"kind":"constructor","numberOfStatements":3,"parentType":{"ref":279},"signature":"Hello()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":240,"element":{"ref":227},"endPos":2016,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1993},{"FM3":"Famix-Java-Entities.Parameter","id":241,"name":"fileName","declaredType":{"ref":344},"parentBehaviouralEntity":{"ref":475}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":242,"element":{"ref":101},"endPos":1370,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1349},{"FM3":"Famix-Java-Entities.Reference","id":243,"previous":{"ref":267},"referencer":{"ref":596},"referredType":{"ref":316}},{"FM3":"Famix-Java-Entities.Invocation","id":244,"candidates":[{"ref":513}],"previous":{"ref":162},"receiver":{"ref":16},"sender":{"ref":596},"signature":"put(\"5\",\"5\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":245,"element":{"ref":523},"endPos":1941,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1923},{"FM3":"Famix-Java-Entities.Method","id":246,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":413},"signature":"_Anonymous(Button)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":247,"candidates":[{"ref":508}],"previous":{"ref":154},"sender":{"ref":475},"signature":"confirmGroupRemoval()"},{"FM3":"Famix-Java-Entities.Invocation","id":248,"candidates":[{"ref":133}],"previous":{"ref":504},"sender":{"ref":230},"signature":"Integer(12)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":249,"element":{"ref":565},"endPos":685,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":674},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":250,"element":{"ref":414},"endPos":331,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":326},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":251,"element":{"ref":455},"endPos":1263,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1252},{"FM3":"Famix-Java-Entities.Method","id":252,"name":"Carrefour","isStub":true,"kind":"constructor","parentType":{"ref":28},"signature":"Carrefour()","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":253,"name":"buildLienSimple","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":279},"signature":"buildLienSimple()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":254,"element":{"ref":546},"endPos":3717,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3579},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":255,"element":{"ref":381},"endPos":1112,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":920},{"FM3":"Famix-Java-Entities.Access","id":256,"accessor":{"ref":230},"previous":{"ref":408},"variable":{"ref":325}},{"FM3":"Famix-Java-Entities.Package","id":257,"name":"hello"},{"FM3":"Famix-Java-Entities.Class","id":258,"name":"FilterOutputStream","isStub":true,"typeContainer":{"ref":553},"visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":259,"candidates":[{"ref":601}],"sender":{"ref":303},"signature":"BLLabel(\"inside \")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":260,"element":{"ref":599},"endPos":569,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":566},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":261,"element":{"ref":359},"endPos":1014,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1004},{"FM3":"Famix-Java-Entities.Invocation","id":262,"candidates":[{"ref":551}],"previous":{"ref":248},"receiver":{"ref":325},"sender":{"ref":230},"signature":"compareTo(nb2)"},{"FM3":"Famix-Java-Entities.Invocation","id":263,"candidates":[{"ref":172}],"previous":{"ref":445},"sender":{"ref":105},"signature":"Label()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":264,"element":{"ref":166},"endPos":3761,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3385},{"FM3":"Famix-Java-Entities.Class","id":265,"name":"_Anonymous(Carrefour)","typeContainer":{"ref":381},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":266,"element":{"ref":485},"endPos":394,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":389},{"FM3":"Famix-Java-Entities.Reference","id":267,"referencer":{"ref":596},"referredType":{"ref":589}},{"FM3":"Famix-Java-Entities.Invocation","id":268,"candidates":[{"ref":218}],"receiver":{"ref":289},"sender":{"ref":345},"signature":"hello(i)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":269,"element":{"ref":357},"endPos":4725,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4698},{"FM3":"Famix-Java-Entities.Class","id":270,"name":"Canard","isStub":true,"typeContainer":{"ref":204}},{"FM3":"Famix-Java-Entities.Inheritance","id":271,"subclass":{"ref":413},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Reference","id":272,"previous":{"ref":138},"referencer":{"ref":105},"referredType":{"ref":58}},{"FM3":"Famix-Java-Entities.Package","id":273,"name":"lang","isStub":true,"parentPackage":{"ref":583}},{"FM3":"Famix-Java-Entities.Reference","id":274,"previous":{"ref":613},"referencer":{"ref":1},"referredType":{"ref":590}},{"FM3":"Famix-Java-Entities.Invocation","id":275,"candidates":[{"ref":471}],"previous":{"ref":106},"sender":{"ref":204},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":276,"element":{"ref":586},"endPos":2043,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2033},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":277,"element":{"ref":491},"endPos":2910,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2889},{"FM3":"Famix-Java-Entities.Reference","id":278,"previous":{"ref":455},"referencer":{"ref":426},"referredType":{"ref":590}},{"FM3":"Famix-Java-Entities.Class","id":279,"name":"Hello","typeContainer":{"ref":257},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":280,"element":{"ref":72},"endPos":3236,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2764},{"FM3":"Famix-Java-Entities.Class","id":281,"name":"MyInterface","isInterface":true,"typeContainer":{"ref":257},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":282,"element":{"ref":208},"endPos":517,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":500},{"FM3":"Famix-Java-Entities.Class","id":283,"name":"Canard","isStub":true,"typeContainer":{"ref":380}},{"FM3":"Famix-Java-Entities.Method","id":284,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":386},"signature":"_Anonymous(Button)()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":285,"element":{"ref":617},"endPos":1230,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1197},{"FM3":"Famix-Java-Entities.LocalVariable","id":286,"name":"externalIdentifier","parentBehaviouralEntity":{"ref":608}},{"FM3":"Famix-Java-Entities.Parameter","id":287,"name":"event","parentBehaviouralEntity":{"ref":546}},{"FM3":"Famix-Java-Entities.Class","id":288,"name":"ConstantDesc","isInterface":true,"isStub":true,"typeContainer":{"ref":135},"visibility":"public"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":289,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":345}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":290,"element":{"ref":105},"endPos":2269,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2169},{"FM3":"Famix-Java-Entities.Class","id":291,"name":"Canard","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.Invocation","id":292,"candidates":[{"ref":252}],"previous":{"ref":532},"sender":{"ref":46},"signature":"Carrefour()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":293,"element":{"ref":629},"endPos":3169,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2974},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":294,"element":{"ref":210},"endPos":346,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":342},{"FM3":"Famix-Java-Entities.Method","id":295,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":65},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":296,"name":"Object","isStub":true,"typeContainer":{"ref":273}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":297,"element":{"ref":63},"endPos":1151,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1147},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":298,"element":{"ref":621},"endPos":3192,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2889},{"FM3":"Famix-Java-Entities.Invocation","id":299,"candidates":[{"ref":493}],"previous":{"ref":332},"sender":{"ref":608},"signature":"addClickHandler(new ClickHandler(){
  @Override public void onClick(  ClickEvent event){
    Box db=new Box(externalIdentifier.getText(),true);
    db.show();
  }
}
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":300,"element":{"ref":85},"endPos":2162,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2058},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":301,"element":{"ref":355},"endPos":1095,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1048},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":302,"element":{"ref":368},"endPos":1440,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1436},{"FM3":"Famix-Java-Entities.Method","id":303,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":386},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":304,"element":{"ref":627},"endPos":547,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":544},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":305,"element":{"ref":281},"endPos":109,"fileName":".\\testing\\src\\hello\\MyInterface.java","startPos":17},{"FM3":"Famix-Java-Entities.Class","id":306,"name":"_Anonymous(ClickHandler)","typeContainer":{"ref":421},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":307,"name":"_Anonymous(Oupsi)","isStub":true,"kind":"constructor","parentType":{"ref":183},"signature":"_Anonymous(Oupsi)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":308,"name":"String","isStub":true,"kind":"constructor","parentType":{"ref":344},"signature":"String()","visibility":"public"},{"FM3":"Famix-Java-Entities.Parameter","id":309,"name":"bb","declaredType":{"ref":364},"parentBehaviouralEntity":{"ref":355}},{"FM3":"Famix-Java-Entities.Inheritance","id":310,"previous":{"ref":450},"subclass":{"ref":412},"superclass":{"ref":190}},{"FM3":"Famix-Java-Entities.Method","id":311,"name":"_Anonymous(ClickHandler)","isStub":true,"kind":"constructor","parentType":{"ref":51},"signature":"_Anonymous(ClickHandler)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":312,"previous":{"ref":216},"subclass":{"ref":344},"superclass":{"ref":288}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":313,"element":{"ref":353},"endPos":977,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":967},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":314,"element":{"ref":253},"endPos":3244,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2481},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":315,"element":{"ref":593},"endPos":3973,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3952},{"FM3":"Famix-Java-Entities.Class","id":316,"name":"HashMap","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.LocalVariable","id":317,"name":"i","parentBehaviouralEntity":{"ref":105}},{"FM3":"Famix-Java-Entities.Access","id":318,"accessor":{"ref":598},"isWrite":true,"variable":{"ref":440}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":319,"element":{"ref":262},"endPos":5292,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5276},{"FM3":"Famix-Java-Entities.Invocation","id":320,"candidates":[{"ref":91}],"receiver":{"ref":79},"sender":{"ref":437},"signature":"call(Hello.classProperty)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":321,"element":{"ref":161},"endPos":2155,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2137},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":322,"element":{"ref":407},"endPos":3049,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3028},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":323,"element":{"ref":476},"endPos":2467,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2326},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":324,"element":{"ref":530},"endPos":539,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":522},{"FM3":"Famix-Java-Entities.LocalVariable","id":325,"name":"nb","declaredType":{"ref":412},"parentBehaviouralEntity":{"ref":230}},{"FM3":"Famix-Java-Entities.LocalVariable","id":326,"name":"label","parentBehaviouralEntity":{"ref":204}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":327,"element":{"ref":146},"endPos":1859,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1843},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":328,"element":{"ref":614},"endPos":977,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":967},{"FM3":"Famix-Java-Entities.Class","id":329,"name":"Flushable","isInterface":true,"isStub":true,"typeContainer":{"ref":553},"visibility":"public"},{"FM3":"Famix-Java-Entities.Attribute","id":330,"name":"c42","parentType":{"ref":279}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":331,"element":{"ref":333},"endPos":1866,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1798},{"FM3":"Famix-Java-Entities.Invocation","id":332,"candidates":[{"ref":436}],"sender":{"ref":608},"signature":"Label(\"Boite de dialogue modale\")"},{"FM3":"Famix-Java-Entities.Method","id":333,"name":"longNew","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":1,"parentType":{"ref":279},"signature":"longNew()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":334,"element":{"ref":395},"endPos":906,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":901},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":335,"element":{"ref":171},"endPos":653,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":638},{"FM3":"Famix-Java-Entities.Method","id":336,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":283},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":337,"element":{"ref":140},"endPos":482,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":454},{"FM3":"Famix-Java-Entities.Inheritance","id":338,"subclass":{"ref":258},"superclass":{"ref":83}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":339,"element":{"ref":588},"endPos":525,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":522},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":340,"element":{"ref":118},"endPos":653,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":638},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":341,"element":{"ref":225},"endPos":5226,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5206},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":342,"element":{"ref":606},"endPos":4433,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4238},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":343,"element":{"ref":154},"endPos":4062,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4037},{"FM3":"Famix-Java-Entities.Class","id":344,"name":"String","isFinal":true,"isStub":true,"typeContainer":{"ref":273},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":345,"name":"decla","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":1,"parentType":{"ref":279},"signature":"decla(int)","visibility":"private"},{"FM3":"Famix-Java-Entities.LocalVariable","id":346,"name":"j","parentBehaviouralEntity":{"ref":105}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":347,"element":{"ref":36},"endPos":1859,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1843},{"FM3":"Famix-Java-Entities.Access","id":348,"accessor":{"ref":85},"isWrite":true,"variable":{"ref":163}},{"FM3":"Famix-Java-Entities.Type","id":349,"name":"QuicksearchExempleREL","isStub":true,"typeContainer":{"ref":72}},{"FM3":"Famix-Java-Entities.Invocation","id":350,"candidates":[{"ref":233}],"previous":{"ref":227},"receiver":{"ref":165},"sender":{"ref":108},"signature":"call2(this.patate)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":351,"element":{"ref":176},"endPos":4407,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4370},{"FM3":"Famix-Java-Entities.LocalVariable","id":352,"name":"innertButton","parentBehaviouralEntity":{"ref":426}},{"FM3":"Famix-Java-Entities.Access","id":353,"accessor":{"ref":381},"isWrite":true,"variable":{"ref":86}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":354,"element":{"ref":125},"endPos":2043,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2033},{"FM3":"Famix-Java-Entities.Method","id":355,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":0,"parentType":{"ref":265},"signature":"execute(boolean)","visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":356,"name":"Box","isStub":true,"typeContainer":{"ref":113}},{"FM3":"Famix-Java-Entities.Invocation","id":357,"candidates":[{"ref":463}],"previous":{"ref":202},"sender":{"ref":113},"signature":"getText()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":358,"element":{"ref":267},"endPos":482,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":454},{"FM3":"Famix-Java-Entities.Access","id":359,"accessor":{"ref":381},"isWrite":true,"previous":{"ref":614},"variable":{"ref":86}},{"FM3":"Famix-Java-Entities.Inheritance","id":360,"subclass":{"ref":98},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":361,"element":{"ref":239},"endPos":913,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":849},{"FM3":"Famix-Java-Entities.Attribute","id":362,"name":"complexCanard","parentType":{"ref":279}},{"FM3":"Famix-Java-Entities.Method","id":363,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":224},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.PrimitiveType","id":364,"name":"boolean","isStub":true},{"FM3":"Famix-Java-Entities.Class","id":365,"name":"PrintStream","isStub":true,"typeContainer":{"ref":553},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":366,"element":{"ref":628},"endPos":3735,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3544},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":367,"element":{"ref":468},"endPos":1698,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1577},{"FM3":"Famix-Java-Entities.Access","id":368,"accessor":{"ref":426},"previous":{"ref":522},"variable":{"ref":210}},{"FM3":"Famix-Java-Entities.Access","id":369,"accessor":{"ref":230},"isWrite":true,"previous":{"ref":134},"variable":{"ref":225}},{"FM3":"Famix-Java-Entities.Method","id":370,"name":"println","declaredType":{"ref":76},"isStub":true,"parentType":{"ref":365},"signature":"println(char[])","visibility":"public"},{"FM3":"Famix-Java-Entities.Inheritance","id":371,"subclass":{"ref":590},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Attribute","id":372,"name":"out","isClassSide":true,"isFinal":true,"isStub":true,"parentType":{"ref":590},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":373,"element":{"ref":174},"endPos":5085,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4960},{"FM3":"Famix-Java-Entities.Invocation","id":374,"candidates":[{"ref":284}],"previous":{"ref":166},"sender":{"ref":204},"signature":"_Anonymous(Button)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":375,"element":{"ref":461},"endPos":1493,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1482},{"FM3":"Famix-Java-Entities.Package","id":376,"name":"<Default Package>","isStub":true},{"FM3":"Famix-Java-Entities.Invocation","id":377,"candidates":[{"ref":446}],"previous":{"ref":430},"receiver":{"ref":541},"sender":{"ref":629},"signature":"hide()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":378,"element":{"ref":603},"endPos":5291,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5289},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":379,"element":{"ref":352},"endPos":1493,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1467},{"FM3":"Famix-Java-Entities.Method","id":380,"name":"test","cyclomaticComplexity":1,"declaredType":{"ref":529},"numberOfStatements":8,"parentType":{"ref":279},"signature":"test()","visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":381,"name":"useThisForFieldAccess","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":4,"parentType":{"ref":279},"signature":"useThisForFieldAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":382,"element":{"ref":259},"endPos":3525,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3504},{"FM3":"Famix-Java-Entities.Method","id":383,"name":"setCarrefour","isStub":true,"parentType":{"ref":98},"signature":"setCarrefour(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":384,"name":"setValue","isStub":true,"parentType":{"ref":98},"signature":"setValue(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":385,"element":{"ref":30},"endPos":5070,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5032},{"FM3":"Famix-Java-Entities.Class","id":386,"name":"_Anonymous(Button)","typeContainer":{"ref":204},"visibility":"package"},{"FM3":"Famix-Java-Entities.LocalVariable","id":387,"name":"c","parentBehaviouralEntity":{"ref":204}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":388,"element":{"ref":113},"endPos":4757,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4624},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":389,"element":{"ref":201},"endPos":3839,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3825},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":390,"element":{"ref":346},"endPos":2262,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2248},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":391,"element":{"ref":318},"endPos":4205,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4168},{"FM3":"Famix-Java-Entities.Class","id":392,"name":"Canard","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.Invocation","id":393,"candidates":[{"ref":336}],"previous":{"ref":617},"sender":{"ref":380},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":394,"element":{"ref":219},"endPos":1184,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1180},{"FM3":"Famix-Java-Entities.Invocation","id":395,"candidates":[{"ref":380}],"receiver":{"ref":605},"sender":{"ref":239},"signature":"test()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":396,"element":{"ref":467},"endPos":591,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":588},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":397,"element":{"ref":40},"endPos":768,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":752},{"FM3":"Famix-Java-Entities.Inheritance","id":398,"previous":{"ref":17},"subclass":{"ref":365},"superclass":{"ref":480}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":399,"element":{"ref":386},"endPos":3760,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3410},{"FM3":"Famix-Java-Entities.LocalVariable","id":400,"name":"fspLienSimple","parentBehaviouralEntity":{"ref":253}},{"FM3":"Famix-Java-Entities.Access","id":401,"accessor":{"ref":423},"isWrite":true,"variable":{"ref":451}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":402,"element":{"ref":506},"endPos":5011,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5002},{"FM3":"Famix-Java-Entities.Class","id":403,"name":"Label","isStub":true,"typeContainer":{"ref":105}},{"FM3":"Famix-Java-Entities.Class","id":404,"name":"HashMap","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.Invocation","id":405,"candidates":[{"ref":550}],"sender":{"ref":546},"signature":"BLLabel(\"inside inside\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":406,"element":{"ref":598},"endPos":4441,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4121},{"FM3":"Famix-Java-Entities.Parameter","id":407,"name":"event","parentBehaviouralEntity":{"ref":629}},{"FM3":"Famix-Java-Entities.Access","id":408,"accessor":{"ref":230},"previous":{"ref":369},"variable":{"ref":225}},{"FM3":"Famix-Java-Entities.Method","id":409,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":0,"parentType":{"ref":548},"signature":"execute(boolean)","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":410,"element":{"ref":498},"endPos":1441,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1391},{"FM3":"Famix-Java-Entities.AnnotationType","id":411,"name":"Override","annotationTypesContainer":{"ref":273},"isStub":true},{"FM3":"Famix-Java-Entities.Class","id":412,"name":"Integer","isFinal":true,"isStub":true,"typeContainer":{"ref":273},"visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":413,"name":"_Anonymous(Button)","typeContainer":{"ref":303},"visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":414,"name":"patate","declaredType":{"ref":344},"parentType":{"ref":279},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":415,"element":{"ref":39},"endPos":1673,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1662},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":416,"element":{"ref":214},"endPos":3236,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2653},{"FM3":"Famix-Java-Entities.ParameterizedType","id":417,"name":"Map","arguments":[{"ref":344}],"isStub":true,"parameterizableClass":{"ref":93},"typeContainer":{"ref":87}},{"FM3":"Famix-Java-Entities.Inheritance","id":418,"previous":{"ref":35},"subclass":{"ref":412},"superclass":{"ref":288}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":419,"element":{"ref":444},"endPos":1784,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1784},{"FM3":"Famix-Java-Entities.Class","id":420,"name":"_Anonymous(QuicksearchExempleREL)","typeContainer":{"ref":228},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":421,"name":"<Initializer>","cyclomaticComplexity":1,"numberOfStatements":1,"parentType":{"ref":420},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":422,"element":{"ref":421},"endPos":3211,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2867},{"FM3":"Famix-Java-Entities.Method","id":423,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":281},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":424,"element":{"ref":578},"endPos":4932,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4918},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":425,"element":{"ref":430},"endPos":3106,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3082},{"FM3":"Famix-Java-Entities.Method","id":426,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":519},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":427,"name":"ImageButtonTreeUtils","isStub":true,"typeContainer":{"ref":475}},{"FM3":"Famix-Java-Entities.Method","id":428,"name":"returnNumber","cyclomaticComplexity":1,"declaredType":{"ref":529},"numberOfStatements":1,"parentType":{"ref":279},"signature":"returnNumber(int)","visibility":"private"},{"FM3":"Famix-Java-Entities.Attribute","id":429,"name":"label","declaredType":{"ref":344},"parentType":{"ref":279},"visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":430,"candidates":[{"ref":384}],"receiver":{"ref":541},"sender":{"ref":629},"signature":"setValue(\"chosen by rel\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":431,"element":{"ref":279},"endPos":5502,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":264},{"FM3":"Famix-Java-Entities.Access","id":432,"accessor":{"ref":573},"isWrite":true,"variable":{"ref":429}},{"FM3":"Famix-Java-Entities.Invocation","id":433,"candidates":[{"ref":457}],"previous":{"ref":498},"sender":{"ref":426},"signature":"Button()"},{"FM3":"Famix-Java-Entities.Invocation","id":434,"candidates":[{"ref":143}],"previous":{"ref":357},"sender":{"ref":113},"signature":"show()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":435,"element":{"ref":244},"endPos":605,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":588},{"FM3":"Famix-Java-Entities.Method","id":436,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":88},"signature":"Label(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":437,"name":"classPropertyAccess","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":1,"parentType":{"ref":279},"signature":"classPropertyAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":438,"element":{"ref":548},"endPos":2466,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2373},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":439,"element":{"ref":542},"endPos":1229,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1225},{"FM3":"Famix-Java-Entities.LocalVariable","id":440,"name":"someLocalVariableDefineInExternalScope","declaredType":{"ref":344},"parentBehaviouralEntity":{"ref":598}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":441,"element":{"ref":292},"endPos":4932,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4918},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":442,"element":{"ref":230},"endPos":5499,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5109},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":443,"element":{"ref":162},"endPos":583,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":566},{"FM3":"Famix-Java-Entities.Access","id":444,"accessor":{"ref":428},"variable":{"ref":571}},{"FM3":"Famix-Java-Entities.Invocation","id":445,"candidates":[{"ref":110}],"sender":{"ref":105},"signature":"Label()"},{"FM3":"Famix-Java-Entities.Method","id":446,"name":"hide","isStub":true,"parentType":{"ref":98},"signature":"hide()","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":447,"name":"multiLineNew","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":279},"signature":"multiLineNew()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":448,"element":{"ref":46},"endPos":5102,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4829},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":449,"element":{"ref":487},"endPos":561,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":544},{"FM3":"Famix-Java-Entities.Inheritance","id":450,"subclass":{"ref":412},"superclass":{"ref":3}},{"FM3":"Famix-Java-Entities.Attribute","id":451,"name":"A_FINAL_STRING","declaredType":{"ref":344},"isClassSide":true,"isFinal":true,"parentType":{"ref":281},"visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":452,"name":"Button","isStub":true,"typeContainer":{"ref":426}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":453,"element":{"ref":432},"endPos":1658,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1654},{"FM3":"Famix-Java-Entities.Class","id":454,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":253}},{"FM3":"Famix-Java-Entities.Reference","id":455,"previous":{"ref":102},"referencer":{"ref":380},"referredType":{"ref":196}},{"FM3":"Famix-Java-Entities.Method","id":456,"name":"_Anonymous(BLAbstractLienSimple)","isStub":true,"kind":"constructor","parentType":{"ref":72},"signature":"_Anonymous(BLAbstractLienSimple)(?,?,?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":457,"name":"Button","isStub":true,"kind":"constructor","parentType":{"ref":577},"signature":"Button()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":458,"element":{"ref":247},"endPos":4106,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4081},{"FM3":"Famix-Java-Entities.Parameter","id":459,"name":"event","parentBehaviouralEntity":{"ref":113}},{"FM3":"Famix-Java-Entities.Invocation","id":460,"candidates":[{"ref":38}],"previous":{"ref":244},"sender":{"ref":596},"signature":"Canard(aMap)"},{"FM3":"Famix-Java-Entities.Reference","id":461,"previous":{"ref":278},"referencer":{"ref":426},"referredType":{"ref":452}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":462,"element":{"ref":19},"endPos":1169,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1155},{"FM3":"Famix-Java-Entities.Method","id":463,"name":"getText","isStub":true,"parentType":{"ref":98},"signature":"getText()","visibility":"package"},{"FM3":"Famix-Java-Entities.Parameter","id":464,"name":"event","parentBehaviouralEntity":{"ref":573}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":465,"element":{"ref":287},"endPos":3620,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3599},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":466,"element":{"ref":440},"endPos":4215,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4168},{"FM3":"Famix-Java-Entities.Access","id":467,"accessor":{"ref":596},"previous":{"ref":599},"variable":{"ref":16}},{"FM3":"Famix-Java-Entities.Class","id":468,"name":"_Anonymous(Button)","typeContainer":{"ref":380},"visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":469,"name":"Canard","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.Method","id":470,"name":"println","isStub":true,"parentType":{"ref":98},"signature":"println(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":471,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":24},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":472,"element":{"ref":504},"endPos":5181,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5167},{"FM3":"Famix-Java-Entities.Inheritance","id":473,"subclass":{"ref":519},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":474,"element":{"ref":332},"endPos":4561,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4525},{"FM3":"Famix-Java-Entities.Method","id":475,"name":"getMenuIcon","cyclomaticComplexity":1,"declaredType":{"ref":77},"isClassSide":true,"numberOfStatements":1,"parentType":{"ref":279},"signature":"getMenuIcon()","visibility":"private"},{"FM3":"Famix-Java-Entities.Invocation","id":476,"candidates":[{"ref":383}],"sender":{"ref":579},"signature":"setCarrefour(new Carrefour.Oupsi(){
  @Override public void execute(  boolean bb){
  }
}
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":477,"element":{"ref":591},"endPos":3926,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3910},{"FM3":"Famix-Java-Entities.LocalVariable","id":478,"name":"you","declaredType":{"ref":279},"parentBehaviouralEntity":{"ref":333}},{"FM3":"Famix-Java-Entities.Invocation","id":479,"candidates":[{"ref":104}],"previous":{"ref":433},"sender":{"ref":380},"signature":"setWidget(new Button(\"I''am another Button\"){
  public void onClick(  final ClickEvent event){
    label=new String();
  }
}
)"},{"FM3":"Famix-Java-Entities.Class","id":480,"name":"Closeable","isInterface":true,"isStub":true,"typeContainer":{"ref":553},"visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":481,"candidates":[{"ref":114}],"previous":{"ref":476},"sender":{"ref":579},"signature":"_Anonymous(Carrefour.Oupsi)()"},{"FM3":"Famix-Java-Entities.Invocation","id":482,"candidates":[{"ref":456}],"previous":{"ref":127},"sender":{"ref":253},"signature":"_Anonymous(BLAbstractLienSimple)(\"Un lien simple\",\"Exemple de lien simple\",true,false)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":483,"element":{"ref":82},"endPos":768,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":757},{"FM3":"Famix-Java-Entities.Reference","id":484,"previous":{"ref":578},"referencer":{"ref":230},"referredType":{"ref":412}},{"FM3":"Famix-Java-Entities.Attribute","id":485,"name":"canard","parentType":{"ref":279}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":486,"element":{"ref":155},"endPos":714,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":710},{"FM3":"Famix-Java-Entities.Invocation","id":487,"candidates":[{"ref":513}],"previous":{"ref":530},"receiver":{"ref":16},"sender":{"ref":596},"signature":"put(\"3\",\"3\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":488,"element":{"ref":265},"endPos":1105,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1034},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":489,"element":{"ref":433},"endPos":1493,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1482},{"FM3":"Famix-Java-Entities.Parameter","id":490,"name":"action","declaredType":{"ref":529},"parentBehaviouralEntity":{"ref":475}},{"FM3":"Famix-Java-Entities.Access","id":491,"accessor":{"ref":421},"variable":{"ref":236}},{"FM3":"Famix-Java-Entities.Class","id":492,"name":"Constable","isInterface":true,"isStub":true,"typeContainer":{"ref":135},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":493,"name":"addClickHandler","isStub":true,"parentType":{"ref":98},"signature":"addClickHandler(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":494,"element":{"ref":61},"endPos":3191,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2928},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":495,"element":{"ref":481},"endPos":2466,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2351},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":496,"element":{"ref":585},"endPos":4732,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4690},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":497,"element":{"ref":128},"endPos":4561,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4525},{"FM3":"Famix-Java-Entities.Invocation","id":498,"candidates":[{"ref":370}],"receiver":{"ref":372},"sender":{"ref":426},"signature":"println(event + \" I''m calling \" + hello)"},{"FM3":"Famix-Java-Entities.Inheritance","id":499,"previous":{"ref":226},"subclass":{"ref":344},"superclass":{"ref":130}},{"FM3":"Famix-Java-Entities.Class","id":500,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":253}},{"FM3":"Famix-Java-Entities.SourceLanguage","id":501,},{"FM3":"Famix-Java-Entities.Reference","id":502,"previous":{"ref":32},"referencer":{"ref":447},"referredType":{"ref":123}},{"FM3":"Famix-Java-Entities.Class","id":503,"name":"BLLabel","isStub":true,"typeContainer":{"ref":546}},{"FM3":"Famix-Java-Entities.Invocation","id":504,"candidates":[{"ref":133}],"sender":{"ref":230},"signature":"Integer(12)"},{"FM3":"Famix-Java-Entities.Invocation","id":505,"candidates":[{"ref":644}],"sender":{"ref":475},"signature":"ImageButtonTreeUtils(i18n.confirmGroupRemoval(),path,fileName,i18n.confirmGroupRemoval())"},{"FM3":"Famix-Java-Entities.Parameter","id":506,"name":"bb","parentBehaviouralEntity":{"ref":174}},{"FM3":"Famix-Java-Entities.Inheritance","id":507,"subclass":{"ref":3},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Method","id":508,"name":"confirmGroupRemoval","isStub":true,"parentType":{"ref":98},"signature":"confirmGroupRemoval()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":509,"element":{"ref":320},"endPos":1942,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1918},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":510,"element":{"ref":345},"endPos":4822,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4773},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":511,"element":{"ref":555},"endPos":4078,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4071},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":512,"element":{"ref":408},"endPos":5243,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5241},{"FM3":"Famix-Java-Entities.Method","id":513,"name":"put","declaredType":{"ref":188},"isAbstract":true,"isStub":true,"parentType":{"ref":93},"signature":"put(K,V)","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":514,"element":{"ref":141},"endPos":1105,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1018},{"FM3":"Famix-Java-Entities.Class","id":515,"name":"BLLabel","isStub":true,"typeContainer":{"ref":546}},{"FM3":"Famix-Java-Entities.Invocation","id":516,"candidates":[{"ref":217}],"previous":{"ref":170},"sender":{"ref":596},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.Type","id":517,"name":"BLAbstractLienSimple","isStub":true,"typeContainer":{"ref":279}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":518,"element":{"ref":112},"endPos":1518,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1286},{"FM3":"Famix-Java-Entities.Class","id":519,"name":"_Anonymous(Button)","typeContainer":{"ref":380},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":520,"element":{"ref":387},"endPos":3374,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3359},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":521,"element":{"ref":532},"endPos":5095,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4918},{"FM3":"Famix-Java-Entities.Access","id":522,"accessor":{"ref":426},"variable":{"ref":372}},{"FM3":"Famix-Java-Entities.Access","id":523,"accessor":{"ref":437},"variable":{"ref":182}},{"FM3":"Famix-Java-Entities.ParameterizableClass","id":524,"name":"Comparable","isInterface":true,"isStub":true,"typeContainer":{"ref":273},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":525,"element":{"ref":54},"endPos":1698,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1543},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":526,"element":{"ref":400},"endPos":2615,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2558},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":527,"element":{"ref":428},"endPos":1791,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1735},{"FM3":"Famix-Java-Entities.LocalVariable","id":528,"name":"c","parentBehaviouralEntity":{"ref":380}},{"FM3":"Famix-Java-Entities.PrimitiveType","id":529,"name":"int","isStub":true},{"FM3":"Famix-Java-Entities.Invocation","id":530,"candidates":[{"ref":513}],"previous":{"ref":208},"receiver":{"ref":16},"sender":{"ref":596},"signature":"put(\"2\",\"2\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":531,"element":{"ref":362},"endPos":653,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":622},{"FM3":"Famix-Java-Entities.Invocation","id":532,"candidates":[{"ref":307}],"sender":{"ref":46},"signature":"_Anonymous(Oupsi)()"},{"FM3":"Famix-Java-Entities.Inheritance","id":533,"subclass":{"ref":344},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Reference","id":534,"previous":{"ref":484},"referencer":{"ref":230},"referredType":{"ref":412}},{"FM3":"Famix-Java-Entities.Type","id":535,"name":"Oupsi","isStub":true,"typeContainer":{"ref":279}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":536,"element":{"ref":152},"endPos":4761,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4601},{"FM3":"Famix-Java-Entities.Inheritance","id":537,"subclass":{"ref":386},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Access","id":538,"accessor":{"ref":85},"previous":{"ref":348},"variable":{"ref":163}},{"FM3":"Famix-Java-Entities.Inheritance","id":539,"subclass":{"ref":306},"superclass":{"ref":296}},{"FM3":"Famix-Java-Entities.Method","id":540,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":468},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":541,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":629}},{"FM3":"Famix-Java-Entities.Access","id":542,"accessor":{"ref":380},"previous":{"ref":64},"variable":{"ref":210}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":543,"element":{"ref":163},"endPos":2126,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2097},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":544,"element":{"ref":464},"endPos":1633,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1612},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":545,"element":{"ref":434},"endPos":4751,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4743},{"FM3":"Famix-Java-Entities.Method","id":546,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":1,"parentType":{"ref":413},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":547,"name":"BLLabel","isStub":true,"typeContainer":{"ref":303}},{"FM3":"Famix-Java-Entities.Class","id":548,"name":"_Anonymous(Carrefour.Oupsi)","typeContainer":{"ref":579},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":549,"element":{"ref":460},"endPos":653,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":638},{"FM3":"Famix-Java-Entities.Method","id":550,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":515},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":551,"name":"compareTo","declaredType":{"ref":529},"isStub":true,"parentType":{"ref":412},"signature":"compareTo(Integer)","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":552,"element":{"ref":51},"endPos":4761,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4619},{"FM3":"Famix-Java-Entities.Package","id":553,"name":"io","isStub":true,"parentPackage":{"ref":583}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":554,"element":{"ref":186},"endPos":3694,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3657},{"FM3":"Famix-Java-Entities.Access","id":555,"accessor":{"ref":475},"previous":{"ref":4},"variable":{"ref":241}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":556,"element":{"ref":608},"endPos":4766,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4448},{"FM3":"Famix-Java-Entities.Invocation","id":557,"candidates":[{"ref":213}],"receiver":{"ref":372},"sender":{"ref":1},"signature":"println(someLocalVariableDefineInExternalScope)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":558,"element":{"ref":566},"endPos":842,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":776},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":559,"element":{"ref":350},"endPos":2044,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2027},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":560,"element":{"ref":306},"endPos":3191,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2947},{"FM3":"Famix-Java-Entities.Parameter","id":561,"name":"event","parentBehaviouralEntity":{"ref":1}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":562,"element":{"ref":32},"endPos":3694,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3667},{"FM3":"Famix-Java-Entities.Method","id":563,"name":"BLFieldSetPanel","isStub":true,"kind":"constructor","parentType":{"ref":500},"signature":"BLFieldSetPanel(?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":564,"element":{"ref":326},"endPos":3341,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3316},{"FM3":"Famix-Java-Entities.Reference","id":565,"previous":{"ref":118},"referencer":{"ref":596},"referredType":{"ref":215}},{"FM3":"Famix-Java-Entities.Method","id":566,"name":"main","cyclomaticComplexity":1,"declaredType":{"ref":76},"isClassSide":true,"numberOfStatements":1,"parentType":{"ref":279},"signature":"main(String[])","visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":567,"previous":{"ref":169},"referencer":{"ref":303},"referredType":{"ref":547}},{"FM3":"Famix-Java-Entities.Access","id":568,"accessor":{"ref":596},"previous":{"ref":467},"variable":{"ref":16}},{"FM3":"Famix-Java-Entities.Access","id":569,"accessor":{"ref":108},"variable":{"ref":165}},{"FM3":"Famix-Java-Entities.Method","id":570,"name":"_Anonymous(ClickHandler)","isStub":true,"kind":"constructor","parentType":{"ref":306},"signature":"_Anonymous(ClickHandler)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Parameter","id":571,"name":"i","declaredType":{"ref":529},"parentBehaviouralEntity":{"ref":428}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":572,"element":{"ref":561},"endPos":4330,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4309},{"FM3":"Famix-Java-Entities.Method","id":573,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":468},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":574,"element":{"ref":173},"endPos":835,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":825},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":575,"element":{"ref":451},"endPos":105,"fileName":".\\testing\\src\\hello\\MyInterface.java","startPos":79},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":576,"element":{"ref":303},"endPos":3750,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3424},{"FM3":"Famix-Java-Entities.Class","id":577,"name":"Button","isStub":true,"typeContainer":{"ref":426}},{"FM3":"Famix-Java-Entities.Reference","id":578,"previous":{"ref":585},"referencer":{"ref":46},"referredType":{"ref":607}},{"FM3":"Famix-Java-Entities.Method","id":579,"name":"newAnonymousOfInnerClass","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":1,"parentType":{"ref":279},"signature":"newAnonymousOfInnerClass()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":580,"element":{"ref":170},"endPos":685,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":674},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":581,"element":{"ref":20},"endPos":835,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":825},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":582,"element":{"ref":330},"endPos":685,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":668},{"FM3":"Famix-Java-Entities.Package","id":583,"name":"java","isStub":true},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":584,"element":{"ref":484},"endPos":5181,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5167},{"FM3":"Famix-Java-Entities.Reference","id":585,"previous":{"ref":128},"referencer":{"ref":113},"referredType":{"ref":232}},{"FM3":"Famix-Java-Entities.Access","id":586,"accessor":{"ref":108},"previous":{"ref":125},"variable":{"ref":414}},{"FM3":"Famix-Java-Entities.Method","id":587,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":158},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":588,"accessor":{"ref":596},"previous":{"ref":117},"variable":{"ref":16}},{"FM3":"Famix-Java-Entities.Class","id":589,"name":"HashMap","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.Class","id":590,"name":"System","isFinal":true,"isStub":true,"typeContainer":{"ref":273},"visibility":"public"},{"FM3":"Famix-Java-Entities.Parameter","id":591,"name":"path","declaredType":{"ref":344},"parentBehaviouralEntity":{"ref":475}},{"FM3":"Famix-Java-Entities.Method","id":592,"name":"toString","declaredType":{"ref":344},"isStub":true,"parentType":{"ref":344},"signature":"toString()","visibility":"public"},{"FM3":"Famix-Java-Entities.Parameter","id":593,"name":"extension","declaredType":{"ref":344},"parentBehaviouralEntity":{"ref":475}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":594,"element":{"ref":429},"endPos":364,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":360},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":595,"element":{"ref":299},"endPos":4762,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4566},{"FM3":"Famix-Java-Entities.Method","id":596,"name":"<Initializer>","cyclomaticComplexity":1,"numberOfStatements":7,"parentType":{"ref":279},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":597,"element":{"ref":108},"endPos":2051,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1956},{"FM3":"Famix-Java-Entities.Method","id":598,"name":"externalMethod","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":279},"signature":"externalMethod()","visibility":"private"},{"FM3":"Famix-Java-Entities.Access","id":599,"accessor":{"ref":596},"previous":{"ref":627},"variable":{"ref":16}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":600,"element":{"ref":413},"endPos":3735,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3557},{"FM3":"Famix-Java-Entities.Method","id":601,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":206},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Type","id":602,"name":"Button","isStub":true,"typeContainer":{"ref":519}},{"FM3":"Famix-Java-Entities.Access","id":603,"accessor":{"ref":230},"previous":{"ref":256},"variable":{"ref":225}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":604,"element":{"ref":16},"endPos":482,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":447},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":605,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":239}},{"FM3":"Famix-Java-Entities.Invocation","id":606,"candidates":[{"ref":223}],"previous":{"ref":203},"sender":{"ref":598},"signature":"_Anonymous(Button)(\"I''am a Button\")"},{"FM3":"Famix-Java-Entities.Class","id":607,"name":"Carrefour","isStub":true,"typeContainer":{"ref":46}},{"FM3":"Famix-Java-Entities.Method","id":608,"name":"externalIdentifierMethod","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":279},"signature":"externalIdentifierMethod()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":609,"element":{"ref":12},"endPos":3225,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2821},{"FM3":"Famix-Java-Entities.Class","id":610,"name":"Canard","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.Class","id":611,"name":"Appendable","isInterface":true,"isStub":true,"typeContainer":{"ref":273},"visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":612,"name":"Canard","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.Reference","id":613,"previous":{"ref":502},"referencer":{"ref":475},"referredType":{"ref":189}},{"FM3":"Famix-Java-Entities.Access","id":614,"accessor":{"ref":381},"isWrite":true,"previous":{"ref":353},"variable":{"ref":414}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":615,"element":{"ref":109},"endPos":1519,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1274},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":616,"element":{"ref":478},"endPos":1859,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1837},{"FM3":"Famix-Java-Entities.Invocation","id":617,"candidates":[{"ref":213}],"previous":{"ref":19},"receiver":{"ref":372},"sender":{"ref":380},"signature":"println(patate + hello)"},{"FM3":"Famix-Java-Entities.Type","id":618,"name":"Box","isStub":true,"typeContainer":{"ref":51}},{"FM3":"Famix-Java-Entities.Class","id":619,"name":"Canard","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.Method","id":620,"name":"_Anonymous(Carrefour)","isStub":true,"kind":"constructor","parentType":{"ref":265},"signature":"_Anonymous(Carrefour)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":621,"candidates":[{"ref":493}],"previous":{"ref":12},"sender":{"ref":421},"signature":"addClickHandler(new ClickHandler(){
  @Override public void onClick(  final ClickEvent event){
    setValue(\"chosen by rel\");
    hide();
  }
}
)"},{"FM3":"Famix-Java-Entities.Method","id":622,"name":"Box","isStub":true,"kind":"constructor","parentType":{"ref":356},"signature":"Box()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":623,"element":{"ref":348},"endPos":2101,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2097},{"FM3":"Famix-Java-Entities.LocalVariable","id":624,"name":"label41","parentBehaviouralEntity":{"ref":303}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":625,"element":{"ref":70},"endPos":1839,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1837},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":626,"element":{"ref":286},"endPos":4561,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":4504},{"FM3":"Famix-Java-Entities.Access","id":627,"accessor":{"ref":596},"previous":{"ref":588},"variable":{"ref":16}},{"FM3":"Famix-Java-Entities.Invocation","id":628,"candidates":[{"ref":246}],"previous":{"ref":259},"sender":{"ref":303},"signature":"_Anonymous(Button)()"},{"FM3":"Famix-Java-Entities.Method","id":629,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":76},"numberOfStatements":2,"parentType":{"ref":306},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.AnnotationInstance","id":630,"annotatedEntity":{"ref":409},"annotationType":{"ref":411}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":631,"element":{"ref":248},"endPos":5226,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5212},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":632,"element":{"ref":571},"endPos":1764,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":1760},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":633,"element":{"ref":534},"endPos":5226,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":5212},{"FM3":"Famix-Java-Entities.Method","id":634,"name":"_Anonymous(QuicksearchExempleREL)","isStub":true,"kind":"constructor","parentType":{"ref":420},"signature":"_Anonymous(QuicksearchExempleREL)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":635,"accessor":{"ref":380},"previous":{"ref":432},"variable":{"ref":210}},{"FM3":"Famix-Java-Entities.Access","id":636,"accessor":{"ref":345},"variable":{"ref":237}},{"FM3":"Famix-Java-Entities.Reference","id":637,"previous":{"ref":126},"referencer":{"ref":204},"referredType":{"ref":139}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":638,"element":{"ref":579},"endPos":2474,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2276},{"FM3":"Famix-Java-Entities.Class","id":639,"name":"Canard","isStub":true,"typeContainer":{"ref":596}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":640,"element":{"ref":374},"endPos":3760,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":3397},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":641,"element":{"ref":445},"endPos":2231,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2221},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":642,"element":{"ref":117},"endPos":503,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":500},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":643,"element":{"ref":62},"endPos":3225,"fileName":".\\testing\\src\\hello\\Hello.java","startPos":2815},{"FM3":"Famix-Java-Entities.Method","id":644,"name":"ImageButtonTreeUtils","isStub":true,"kind":"constructor","parentType":{"ref":427},"signature":"ImageButtonTreeUtils(?,?,?,?)","visibility":"package"}]'
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
import click.ClickHandler;

import java.util.Map;

public class Hello {
    static int classProperty;
    String patate;
    int hello;
    String label;
    private Carrefour canard;
    
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

    private void invocInSwitch() {
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
