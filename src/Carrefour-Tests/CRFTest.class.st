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
	^ '[{"FM3":"Famix-Java-Entities.Attribute","id":1,"name":"aMap","declaredType":{"ref":612},"isClassSide":true,"isFinal":true,"parentType":{"ref":128},"visibility":"private"},{"FM3":"Famix-Java-Entities.Inheritance","id":2,"subclass":{"ref":246},"superclass":{"ref":350}},{"FM3":"Famix-Java-Entities.Invocation","id":3,"candidates":[{"ref":324}],"receiver":{"ref":264},"sender":{"ref":125},"signature":"returnNumber(5)"},{"FM3":"Famix-Java-Entities.Inheritance","id":4,"subclass":{"ref":21},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Parameter","id":5,"name":"fileName","declaredType":{"ref":486},"parentBehaviouralEntity":{"ref":591}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":6,"element":{"ref":140},"endPos":724,"fileName":"./src/hello\\Hello.java","startPos":713},{"FM3":"Famix-Java-Entities.LocalVariable","id":7,"name":"someLocalVariableDefineInExternalScope","declaredType":{"ref":486},"parentBehaviouralEntity":{"ref":268}},{"FM3":"Famix-Java-Entities.Class","id":8,"name":"PrintStream","isStub":true,"typeContainer":{"ref":332},"visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":9,"candidates":[{"ref":347}],"sender":{"ref":613},"signature":"setCarrefour(new Carrefour.Oupsi(){
  @Override public void execute(  boolean bb){
  }
}
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":10,"element":{"ref":601},"endPos":4771,"fileName":"./src/hello\\Hello.java","startPos":4729},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":11,"element":{"ref":329},"endPos":3380,"fileName":"./src/hello\\Hello.java","startPos":3363},{"FM3":"Famix-Java-Entities.Method","id":12,"name":"toString","declaredType":{"ref":486},"isStub":true,"parentType":{"ref":486},"signature":"toString()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":13,"element":{"ref":258},"endPos":3413,"fileName":"./src/hello\\Hello.java","startPos":3398},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":14,"element":{"ref":9},"endPos":2506,"fileName":"./src/hello\\Hello.java","startPos":2365},{"FM3":"Famix-Java-Entities.Attribute","id":15,"name":"patate","declaredType":{"ref":486},"parentType":{"ref":128},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":16,"element":{"ref":516},"endPos":4796,"fileName":"./src/hello\\Hello.java","startPos":4663},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":17,"element":{"ref":574},"endPos":608,"fileName":"./src/hello\\Hello.java","startPos":605},{"FM3":"Famix-Java-Entities.Parameter","id":18,"name":"bb","parentBehaviouralEntity":{"ref":193}},{"FM3":"Famix-Java-Entities.Reference","id":19,"previous":{"ref":197},"referencer":{"ref":516},"referredType":{"ref":605}},{"FM3":"Famix-Java-Entities.Invocation","id":20,"candidates":[{"ref":77}],"sender":{"ref":193},"signature":"println(\"Hello stupid code\")"},{"FM3":"Famix-Java-Entities.Class","id":21,"name":"_Anonymous(ClickHandler)","typeContainer":{"ref":490},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":22,"element":{"ref":374},"endPos":3733,"fileName":"./src/hello\\Hello.java","startPos":3696},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":23,"element":{"ref":153},"endPos":3413,"fileName":"./src/hello\\Hello.java","startPos":3402},{"FM3":"Famix-Java-Entities.Method","id":24,"name":"setWidget","isStub":true,"parentType":{"ref":314},"signature":"setWidget(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Type","id":25,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":128}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":26,"element":{"ref":70},"endPos":1898,"fileName":"./src/hello\\Hello.java","startPos":1876},{"FM3":"Famix-Java-Entities.Class","id":27,"name":"ConstantDesc","isInterface":true,"isStub":true,"typeContainer":{"ref":518},"visibility":"public"},{"FM3":"Famix-Java-Entities.Type","id":28,"name":"Carrefour","isStub":true,"typeContainer":{"ref":128}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":29,"element":{"ref":523},"endPos":4049,"fileName":"./src/hello\\Hello.java","startPos":4032},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":30,"element":{"ref":64},"endPos":433,"fileName":"./src/hello\\Hello.java","startPos":417},{"FM3":"Famix-Java-Entities.Method","id":31,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":87},"signature":"Label()","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":32,"name":"Carrefour","isStub":true,"typeContainer":{"ref":467}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":33,"element":{"ref":464},"endPos":489,"fileName":"./src/hello\\Hello.java","startPos":486},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":34,"element":{"ref":353},"endPos":4399,"fileName":"./src/hello\\Hello.java","startPos":4390},{"FM3":"Famix-Java-Entities.Reference","id":35,"previous":{"ref":579},"referencer":{"ref":524},"referredType":{"ref":53}},{"FM3":"Famix-Java-Entities.Class","id":36,"name":"Label","isStub":true,"typeContainer":{"ref":490}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":37,"element":{"ref":490},"endPos":4805,"fileName":"./src/hello\\Hello.java","startPos":4487},{"FM3":"Famix-Java-Entities.Class","id":38,"name":"BLLabel","isStub":true,"typeContainer":{"ref":458}},{"FM3":"Famix-Java-Entities.Class","id":39,"name":"Canard","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.Reference","id":40,"previous":{"ref":427},"referencer":{"ref":541},"referredType":{"ref":454}},{"FM3":"Famix-Java-Entities.Class","id":41,"name":"Carrefour","isStub":true,"typeContainer":{"ref":467}},{"FM3":"Famix-Java-Entities.Access","id":42,"accessor":{"ref":524},"previous":{"ref":390},"variable":{"ref":435}},{"FM3":"Famix-Java-Entities.Invocation","id":43,"candidates":[{"ref":367}],"previous":{"ref":170},"sender":{"ref":125},"signature":"_Anonymous(Button)(\"I''am a Button\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":44,"element":{"ref":355},"endPos":3021,"fileName":"./src/hello\\Hello.java","startPos":3014},{"FM3":"Famix-Java-Entities.Reference","id":45,"previous":{"ref":35},"referencer":{"ref":344},"referredType":{"ref":486}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":46,"element":{"ref":539},"endPos":3659,"fileName":"./src/hello\\Hello.java","startPos":3638},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":47,"element":{"ref":206},"endPos":521,"fileName":"./src/hello\\Hello.java","startPos":493},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":48,"element":{"ref":252},"endPos":1260,"fileName":"./src/hello\\Hello.java","startPos":1255},{"FM3":"Famix-Java-Entities.Inheritance","id":49,"subclass":{"ref":158},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Parameter","id":50,"name":"extension","declaredType":{"ref":486},"parentBehaviouralEntity":{"ref":591}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":51,"element":{"ref":268},"endPos":4480,"fileName":"./src/hello\\Hello.java","startPos":4160},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":52,"element":{"ref":449},"endPos":2083,"fileName":"./src/hello\\Hello.java","startPos":2066},{"FM3":"Famix-Java-Entities.Class","id":53,"name":"Button","isStub":true,"typeContainer":{"ref":524}},{"FM3":"Famix-Java-Entities.Inheritance","id":54,"subclass":{"ref":604},"superclass":{"ref":334}},{"FM3":"Famix-Java-Entities.Class","id":55,"name":"_Anonymous(BLAbstractLienSimple)","typeContainer":{"ref":300},"visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":56,"subclass":{"ref":108},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Attribute","id":57,"name":"c42","parentType":{"ref":128}},{"FM3":"Famix-Java-Entities.Invocation","id":58,"candidates":[{"ref":211}],"previous":{"ref":274},"sender":{"ref":111},"signature":"_Anonymous(ClickHandler)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":59,"element":{"ref":372},"endPos":1134,"fileName":"./src/hello\\Hello.java","startPos":1087},{"FM3":"Famix-Java-Entities.Class","id":60,"name":"Constable","isInterface":true,"isStub":true,"typeContainer":{"ref":518},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":61,"element":{"ref":505},"endPos":3564,"fileName":"./src/hello\\Hello.java","startPos":3543},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":62,"element":{"ref":3},"endPos":1208,"fileName":"./src/hello\\Hello.java","startPos":1194},{"FM3":"Famix-Java-Entities.Parameter","id":63,"name":"i","declaredType":{"ref":301},"parentBehaviouralEntity":{"ref":324}},{"FM3":"Famix-Java-Entities.Attribute","id":64,"name":"externalAttribute","declaredType":{"ref":486},"parentType":{"ref":128},"visibility":"private"},{"FM3":"Famix-Java-Entities.LocalVariable","id":65,"name":"lienSimple","parentBehaviouralEntity":{"ref":300}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":66,"element":{"ref":149},"endPos":4146,"fileName":"./src/hello\\Hello.java","startPos":4032},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":67,"element":{"ref":57},"endPos":724,"fileName":"./src/hello\\Hello.java","startPos":707},{"FM3":"Famix-Java-Entities.Method","id":68,"name":"_Anonymous(Carrefour)","isStub":true,"kind":"constructor","parentType":{"ref":483},"signature":"_Anonymous(Carrefour)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":69,"name":"Canard","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.LocalVariable","id":70,"name":"you","declaredType":{"ref":128},"parentBehaviouralEntity":{"ref":244}},{"FM3":"Famix-Java-Entities.Package","id":71,"name":"<Default Package>","isStub":true},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":72,"element":{"ref":532},"endPos":4790,"fileName":"./src/hello\\Hello.java","startPos":4782},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":73,"element":{"ref":253},"endPos":2082,"fileName":"./src/hello\\Hello.java","startPos":2072},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":74,"element":{"ref":189},"endPos":5252,"fileName":"./src/hello\\Hello.java","startPos":5236},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":75,"element":{"ref":142},"endPos":4472,"fileName":"./src/hello\\Hello.java","startPos":4305},{"FM3":"Famix-Java-Entities.Class","id":76,"name":"_Anonymous(Oupsi)","typeContainer":{"ref":467},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":77,"name":"println","isStub":true,"parentType":{"ref":314},"signature":"println(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Package","id":78,"name":"java","isStub":true},{"FM3":"Famix-Java-Entities.Method","id":79,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":388},"signature":"Canard(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":80,"element":{"ref":435},"endPos":346,"fileName":"./src/hello\\Hello.java","startPos":342},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":81,"element":{"ref":219},"endPos":394,"fileName":"./src/hello\\Hello.java","startPos":389},{"FM3":"Famix-Java-Entities.Access","id":82,"accessor":{"ref":541},"previous":{"ref":463},"variable":{"ref":1}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":83,"element":{"ref":255},"endPos":4462,"fileName":"./src/hello\\Hello.java","startPos":4319},{"FM3":"Famix-Java-Entities.Inheritance","id":84,"subclass":{"ref":350},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Method","id":85,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":417},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":86,"accessor":{"ref":125},"previous":{"ref":252},"variable":{"ref":435}},{"FM3":"Famix-Java-Entities.Class","id":87,"name":"Label","isStub":true,"typeContainer":{"ref":225}},{"FM3":"Famix-Java-Entities.Class","id":88,"name":"Serializable","isInterface":true,"isStub":true,"typeContainer":{"ref":332},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":89,"element":{"ref":431},"endPos":4861,"fileName":"./src/hello\\Hello.java","startPos":4812},{"FM3":"Famix-Java-Entities.Inheritance","id":90,"subclass":{"ref":556},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Access","id":91,"accessor":{"ref":125},"previous":{"ref":480},"variable":{"ref":435}},{"FM3":"Famix-Java-Entities.Method","id":92,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":227},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":93,"previous":{"ref":603},"subclass":{"ref":486},"superclass":{"ref":217}},{"FM3":"Famix-Java-Entities.Invocation","id":94,"candidates":[{"ref":85}],"sender":{"ref":167},"signature":"BLLabel(\"\")"},{"FM3":"Famix-Java-Entities.Parameter","id":95,"name":"event","parentBehaviouralEntity":{"ref":516}},{"FM3":"Famix-Java-Entities.Invocation","id":96,"candidates":[{"ref":507}],"previous":{"ref":404},"receiver":{"ref":1},"sender":{"ref":541},"signature":"put(\"2\",\"2\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":97,"element":{"ref":193},"endPos":5124,"fileName":"./src/hello\\Hello.java","startPos":4999},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":98,"element":{"ref":579},"endPos":1435,"fileName":"./src/hello\\Hello.java","startPos":1430},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":99,"element":{"ref":339},"endPos":2505,"fileName":"./src/hello\\Hello.java","startPos":2412},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":100,"element":{"ref":262},"endPos":630,"fileName":"./src/hello\\Hello.java","startPos":627},{"FM3":"Famix-Java-Entities.Invocation","id":101,"candidates":[{"ref":183}],"previous":{"ref":317},"sender":{"ref":300},"signature":"_Anonymous(BLAbstractLienSimple)(\"Un lien simple\",\"Exemple de lien simple\",true,false)"},{"FM3":"Famix-Java-Entities.Invocation","id":102,"candidates":[{"ref":507}],"previous":{"ref":416},"receiver":{"ref":1},"sender":{"ref":541},"signature":"put(\"5\",\"5\")"},{"FM3":"Famix-Java-Entities.Method","id":103,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":218},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":104,"element":{"ref":95},"endPos":4711,"fileName":"./src/hello\\Hello.java","startPos":4696},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":105,"element":{"ref":352},"endPos":2434,"fileName":"./src/hello\\Hello.java","startPos":2427},{"FM3":"Famix-Java-Entities.Type","id":106,"name":"Box","isStub":true,"typeContainer":{"ref":21}},{"FM3":"Famix-Java-Entities.ParameterType","id":107,"name":"V","isStub":true,"typeContainer":{"ref":145}},{"FM3":"Famix-Java-Entities.Class","id":108,"name":"_Anonymous(Button)","typeContainer":{"ref":589},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":109,"element":{"ref":221},"endPos":4600,"fileName":"./src/hello\\Hello.java","startPos":4543},{"FM3":"Famix-Java-Entities.Invocation","id":110,"candidates":[{"ref":342}],"previous":{"ref":101},"sender":{"ref":119},"signature":"_Anonymous(QuicksearchExempleREL)()"},{"FM3":"Famix-Java-Entities.Method","id":111,"name":"<Initializer>","cyclomaticComplexity":1,"numberOfStatements":1,"parentType":{"ref":556},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":112,"subclass":{"ref":151},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":113,"element":{"ref":450},"endPos":2090,"fileName":"./src/hello\\Hello.java","startPos":1995},{"FM3":"Famix-Java-Entities.LocalVariable","id":114,"name":"fspLienSimple","parentBehaviouralEntity":{"ref":300}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":115,"element":{"ref":346},"endPos":4971,"fileName":"./src/hello\\Hello.java","startPos":4957},{"FM3":"Famix-Java-Entities.Inheritance","id":116,"previous":{"ref":263},"subclass":{"ref":486},"superclass":{"ref":60}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":117,"element":{"ref":144},"endPos":4800,"fileName":"./src/hello\\Hello.java","startPos":4640},{"FM3":"Famix-Java-Entities.ParameterizableClass","id":118,"name":"Comparable","isInterface":true,"isStub":true,"typeContainer":{"ref":485},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":119,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":55},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":120,"element":{"ref":459},"endPos":1302,"fileName":"./src/hello\\Hello.java","startPos":1291},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":121,"element":{"ref":110},"endPos":3264,"fileName":"./src/hello\\Hello.java","startPos":2860},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":122,"element":{"ref":186},"endPos":4145,"fileName":"./src/hello\\Hello.java","startPos":4120},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":123,"element":{"ref":475},"endPos":1532,"fileName":"./src/hello\\Hello.java","startPos":1521},{"FM3":"Famix-Java-Entities.Invocation","id":124,"candidates":[{"ref":233}],"sender":{"ref":458},"signature":"BLLabel(\"out\")"},{"FM3":"Famix-Java-Entities.Method","id":125,"name":"test","cyclomaticComplexity":1,"declaredType":{"ref":301},"numberOfStatements":8,"parentType":{"ref":128},"signature":"test()","visibility":"public"},{"FM3":"Famix-Java-Entities.Parameter","id":126,"name":"args","declaredType":{"ref":486},"parentBehaviouralEntity":{"ref":555}},{"FM3":"Famix-Java-Entities.Invocation","id":127,"candidates":[{"ref":305}],"sender":{"ref":490},"signature":"Label(\"Boite de dialogue modale\")"},{"FM3":"Famix-Java-Entities.Class","id":128,"name":"Hello","typeContainer":{"ref":498},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":129,"name":"println","declaredType":{"ref":488},"isStub":true,"parentType":{"ref":8},"signature":"println(String)","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":130,"element":{"ref":128},"endPos":5282,"fileName":"./src/hello\\Hello.java","startPos":264},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":131,"element":{"ref":137},"endPos":1190,"fileName":"./src/hello\\Hello.java","startPos":1186},{"FM3":"Famix-Java-Entities.Parameter","id":132,"name":"event","parentBehaviouralEntity":{"ref":255}},{"FM3":"Famix-Java-Entities.Class","id":133,"name":"Label","isStub":true,"typeContainer":{"ref":225}},{"FM3":"Famix-Java-Entities.Reference","id":134,"previous":{"ref":45},"referencer":{"ref":344},"referredType":{"ref":486}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":135,"element":{"ref":108},"endPos":3774,"fileName":"./src/hello\\Hello.java","startPos":3596},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":136,"element":{"ref":527},"endPos":542,"fileName":"./src/hello\\Hello.java","startPos":539},{"FM3":"Famix-Java-Entities.Access","id":137,"accessor":{"ref":125},"isWrite":true,"variable":{"ref":435}},{"FM3":"Famix-Java-Entities.Parameter","id":138,"name":"bb","declaredType":{"ref":412},"parentBehaviouralEntity":{"ref":372}},{"FM3":"Famix-Java-Entities.Invocation","id":139,"candidates":[{"ref":286}],"sender":{"ref":541},"signature":"HashMap()"},{"FM3":"Famix-Java-Entities.Reference","id":140,"previous":{"ref":40},"referencer":{"ref":541},"referredType":{"ref":453}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":141,"element":{"ref":147},"endPos":807,"fileName":"./src/hello\\Hello.java","startPos":796},{"FM3":"Famix-Java-Entities.Class","id":142,"name":"_Anonymous(Button)","typeContainer":{"ref":268},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":143,"element":{"ref":418},"endPos":4600,"fileName":"./src/hello\\Hello.java","startPos":4564},{"FM3":"Famix-Java-Entities.Invocation","id":144,"candidates":[{"ref":528}],"previous":{"ref":455},"sender":{"ref":490},"signature":"_Anonymous(ClickHandler)()"},{"FM3":"Famix-Java-Entities.ParameterizableClass","id":145,"name":"Map","isInterface":true,"isStub":true,"typeContainer":{"ref":318},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":146,"element":{"ref":589},"endPos":3789,"fileName":"./src/hello\\Hello.java","startPos":3463},{"FM3":"Famix-Java-Entities.Invocation","id":147,"candidates":[{"ref":103}],"previous":{"ref":171},"sender":{"ref":541},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.Type","id":148,"name":"Canard","isStub":true,"typeContainer":{"ref":128}},{"FM3":"Famix-Java-Entities.Reference","id":149,"previous":{"ref":590},"referencer":{"ref":591},"referredType":{"ref":462}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":150,"element":{"ref":182},"endPos":2270,"fileName":"./src/hello\\Hello.java","startPos":2260},{"FM3":"Famix-Java-Entities.Class","id":151,"name":"_Anonymous(Button)","typeContainer":{"ref":125},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":152,"element":{"ref":260},"endPos":4395,"fileName":"./src/hello\\Hello.java","startPos":4390},{"FM3":"Famix-Java-Entities.Reference","id":153,"previous":{"ref":329},"referencer":{"ref":458},"referredType":{"ref":377}},{"FM3":"Famix-Java-Entities.Inheritance","id":154,"subclass":{"ref":128},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Inheritance","id":155,"previous":{"ref":199},"subclass":{"ref":8},"superclass":{"ref":604}},{"FM3":"Famix-Java-Entities.Invocation","id":156,"candidates":[{"ref":584}],"sender":{"ref":344},"signature":"String()"},{"FM3":"Famix-Java-Entities.Method","id":157,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":142},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":158,"name":"_Anonymous(Button)","typeContainer":{"ref":125},"visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":159,"name":"Box","isStub":true,"kind":"constructor","parentType":{"ref":420},"signature":"Box()","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":160,"candidates":[{"ref":92}],"sender":{"ref":384},"signature":"BLLabel(\"inside inside\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":161,"element":{"ref":158},"endPos":1557,"fileName":"./src/hello\\Hello.java","startPos":1353},{"FM3":"Famix-Java-Entities.Invocation","id":162,"candidates":[{"ref":129}],"receiver":{"ref":596},"sender":{"ref":255},"signature":"println(someLocalVariableDefineInExternalScope)"},{"FM3":"Famix-Java-Entities.Method","id":163,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":322},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":164,"element":{"ref":295},"endPos":92,"fileName":"./src/hello\\MyInterface.java","startPos":79},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":165,"element":{"ref":187},"endPos":2165,"fileName":"./src/hello\\Hello.java","startPos":2136},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":166,"element":{"ref":540},"endPos":3946,"fileName":"./src/hello\\Hello.java","startPos":3931},{"FM3":"Famix-Java-Entities.Method","id":167,"name":"multiLineNew","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":128},"signature":"multiLineNew()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":168,"element":{"ref":139},"endPos":521,"fileName":"./src/hello\\Hello.java","startPos":493},{"FM3":"Famix-Java-Entities.Invocation","id":169,"candidates":[{"ref":549}],"previous":{"ref":523},"sender":{"ref":591},"signature":"confirmGroupRemoval()"},{"FM3":"Famix-Java-Entities.Invocation","id":170,"candidates":[{"ref":24}],"previous":{"ref":537},"sender":{"ref":125},"signature":"setWidget(new Button(\"I''am a Button\"){
  public void onClick(  final ClickEvent event){
    System.out.println(event + \" I''m calling \" + hello);
    Button innertButton=new Button();
  }
}
)"},{"FM3":"Famix-Java-Entities.Invocation","id":171,"candidates":[{"ref":208}],"previous":{"ref":594},"sender":{"ref":541},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.Class","id":172,"name":"_Anonymous(Button)","typeContainer":{"ref":458},"visibility":"package"},{"FM3":"Famix-Java-Entities.Type","id":173,"name":"Oupsi","isStub":true,"typeContainer":{"ref":128}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":174,"element":{"ref":324},"endPos":1830,"fileName":"./src/hello\\Hello.java","startPos":1774},{"FM3":"Famix-Java-Entities.Invocation","id":175,"candidates":[{"ref":545}],"receiver":{"ref":596},"sender":{"ref":524},"signature":"println(event + \" I''m calling \" + hello)"},{"FM3":"Famix-Java-Entities.Invocation","id":176,"candidates":[{"ref":487}],"previous":{"ref":505},"sender":{"ref":589},"signature":"_Anonymous(Button)()"},{"FM3":"Famix-Java-Entities.Class","id":177,"name":"Label","isStub":true,"typeContainer":{"ref":225}},{"FM3":"Famix-Java-Entities.Invocation","id":178,"candidates":[{"ref":157}],"previous":{"ref":408},"sender":{"ref":268},"signature":"_Anonymous(Button)(\"I''am a Button\")"},{"FM3":"Famix-Java-Entities.Invocation","id":179,"candidates":[{"ref":24}],"previous":{"ref":475},"sender":{"ref":125},"signature":"setWidget(new Button(\"I''am another Button\"){
  public void onClick(  final ClickEvent event){
    label=new String();
  }
}
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":180,"element":{"ref":508},"endPos":1302,"fileName":"./src/hello\\Hello.java","startPos":1287},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":181,"element":{"ref":587},"endPos":1898,"fileName":"./src/hello\\Hello.java","startPos":1882},{"FM3":"Famix-Java-Entities.Invocation","id":182,"candidates":[{"ref":31}],"sender":{"ref":225},"signature":"Label()"},{"FM3":"Famix-Java-Entities.Method","id":183,"name":"_Anonymous(BLAbstractLienSimple)","isStub":true,"kind":"constructor","parentType":{"ref":55},"signature":"_Anonymous(BLAbstractLienSimple)(?,?,?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":184,"element":{"ref":428},"endPos":521,"fileName":"./src/hello\\Hello.java","startPos":493},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":185,"element":{"ref":190},"endPos":1966,"fileName":"./src/hello\\Hello.java","startPos":1962},{"FM3":"Famix-Java-Entities.Invocation","id":186,"candidates":[{"ref":549}],"previous":{"ref":169},"sender":{"ref":591},"signature":"confirmGroupRemoval()"},{"FM3":"Famix-Java-Entities.LocalVariable","id":187,"name":"hello","declaredType":{"ref":486},"parentBehaviouralEntity":{"ref":296}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":188,"element":{"ref":126},"endPos":851,"fileName":"./src/hello\\Hello.java","startPos":839},{"FM3":"Famix-Java-Entities.Access","id":189,"accessor":{"ref":504},"isWrite":true,"variable":{"ref":64}},{"FM3":"Famix-Java-Entities.Reference","id":190,"previous":{"ref":213},"referencer":{"ref":282},"referredType":{"ref":128}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":191,"element":{"ref":82},"endPos":586,"fileName":"./src/hello\\Hello.java","startPos":583},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":192,"element":{"ref":497},"endPos":1053,"fileName":"./src/hello\\Hello.java","startPos":1043},{"FM3":"Famix-Java-Entities.Method","id":193,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":1,"parentType":{"ref":76},"signature":"execute()","visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":194,"previous":{"ref":387},"referencer":{"ref":555},"referredType":{"ref":128}},{"FM3":"Famix-Java-Entities.Class","id":195,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":300}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":196,"element":{"ref":463},"endPos":564,"fileName":"./src/hello\\Hello.java","startPos":561},{"FM3":"Famix-Java-Entities.Reference","id":197,"previous":{"ref":418},"referencer":{"ref":516},"referredType":{"ref":241}},{"FM3":"Famix-Java-Entities.Invocation","id":198,"candidates":[{"ref":441}],"receiver":{"ref":552},"sender":{"ref":450},"signature":"call(this.classProperty)"},{"FM3":"Famix-Java-Entities.Inheritance","id":199,"previous":{"ref":378},"subclass":{"ref":8},"superclass":{"ref":358}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":200,"element":{"ref":134},"endPos":1710,"fileName":"./src/hello\\Hello.java","startPos":1705},{"FM3":"Famix-Java-Entities.Type","id":201,"name":"Button","isStub":true,"typeContainer":{"ref":158}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":202,"element":{"ref":242},"endPos":3264,"fileName":"./src/hello\\Hello.java","startPos":2854},{"FM3":"Famix-Java-Entities.Class","id":203,"name":"Flushable","isInterface":true,"isStub":true,"typeContainer":{"ref":332},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":204,"element":{"ref":496},"endPos":753,"fileName":"./src/hello\\Hello.java","startPos":749},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":205,"element":{"ref":524},"endPos":1547,"fileName":"./src/hello\\Hello.java","startPos":1368},{"FM3":"Famix-Java-Entities.Reference","id":206,"previous":{"ref":428},"referencer":{"ref":541},"referredType":{"ref":565}},{"FM3":"Famix-Java-Entities.Class","id":207,"name":"Canard","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.Method","id":208,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":238},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":209,"candidates":[{"ref":375}],"previous":{"ref":9},"sender":{"ref":613},"signature":"_Anonymous(Carrefour.Oupsi)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":210,"element":{"ref":509},"endPos":4835,"fileName":"./src/hello\\Hello.java","startPos":4831},{"FM3":"Famix-Java-Entities.Method","id":211,"name":"_Anonymous(ClickHandler)","isStub":true,"kind":"constructor","parentType":{"ref":535},"signature":"_Anonymous(ClickHandler)()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":212,"element":{"ref":326},"endPos":2301,"fileName":"./src/hello\\Hello.java","startPos":2291},{"FM3":"Famix-Java-Entities.Reference","id":213,"previous":{"ref":134},"referencer":{"ref":244},"referredType":{"ref":128}},{"FM3":"Famix-Java-Entities.Inheritance","id":214,"subclass":{"ref":451},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Method","id":215,"name":"Button","isStub":true,"kind":"constructor","parentType":{"ref":572},"signature":"Button()","visibility":"package"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":216,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":111}},{"FM3":"Famix-Java-Entities.ParameterizedType","id":217,"name":"Comparable","isStub":true,"parameterizableClass":{"ref":118},"typeContainer":{"ref":485}},{"FM3":"Famix-Java-Entities.Class","id":218,"name":"Canard","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.Attribute","id":219,"name":"canard","parentType":{"ref":128}},{"FM3":"Famix-Java-Entities.Method","id":220,"name":"Carrefour","isStub":true,"kind":"constructor","parentType":{"ref":41},"signature":"Carrefour()","visibility":"package"},{"FM3":"Famix-Java-Entities.LocalVariable","id":221,"name":"externalIdentifier","parentBehaviouralEntity":{"ref":490}},{"FM3":"Famix-Java-Entities.Class","id":222,"name":"Canard","isStub":true,"typeContainer":{"ref":125}},{"FM3":"Famix-Java-Entities.Method","id":223,"name":"ImageButtonTreeUtils","isStub":true,"kind":"constructor","parentType":{"ref":465},"signature":"ImageButtonTreeUtils(?,?,?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":224,"element":{"ref":76},"endPos":5134,"fileName":"./src/hello\\Hello.java","startPos":4985},{"FM3":"Famix-Java-Entities.Method","id":225,"name":"doubleAffectation","cyclomaticComplexity":1,"declaredType":{"ref":301},"numberOfStatements":2,"parentType":{"ref":128},"signature":"doubleAffectation()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":226,"element":{"ref":354},"endPos":1409,"fileName":"./src/hello\\Hello.java","startPos":1388},{"FM3":"Famix-Java-Entities.Class","id":227,"name":"BLLabel","isStub":true,"typeContainer":{"ref":384}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":228,"element":{"ref":234},"endPos":4146,"fileName":"./src/hello\\Hello.java","startPos":4032},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":229,"element":{"ref":1},"endPos":521,"fileName":"./src/hello\\Hello.java","startPos":486},{"FM3":"Famix-Java-Entities.Method","id":230,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":439},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":231,"element":{"ref":341},"endPos":1144,"fileName":"./src/hello\\Hello.java","startPos":1057},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":232,"element":{"ref":406},"endPos":1532,"fileName":"./src/hello\\Hello.java","startPos":1506},{"FM3":"Famix-Java-Entities.Method","id":233,"name":"BLLabel","isStub":true,"kind":"constructor","parentType":{"ref":577},"signature":"BLLabel(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Invocation","id":234,"candidates":[{"ref":223}],"sender":{"ref":591},"signature":"ImageButtonTreeUtils(i18n.confirmGroupRemoval(),path,fileName,i18n.confirmGroupRemoval())"},{"FM3":"Famix-Java-Entities.LocalVariable","id":235,"name":"db","parentBehaviouralEntity":{"ref":516}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":236,"element":{"ref":213},"endPos":1898,"fileName":"./src/hello\\Hello.java","startPos":1882},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":237,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":365}},{"FM3":"Famix-Java-Entities.Class","id":238,"name":"Canard","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":239,"element":{"ref":45},"endPos":1712,"fileName":"./src/hello\\Hello.java","startPos":1701},{"FM3":"Famix-Java-Entities.LocalVariable","id":240,"name":"i","parentBehaviouralEntity":{"ref":225}},{"FM3":"Famix-Java-Entities.AnnotationType","id":241,"name":"Override","annotationTypesContainer":{"ref":485},"isStub":true},{"FM3":"Famix-Java-Entities.Attribute","id":242,"name":"rel","parentType":{"ref":55}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":243,"element":{"ref":419},"endPos":2654,"fileName":"./src/hello\\Hello.java","startPos":2613},{"FM3":"Famix-Java-Entities.Method","id":244,"name":"longNew","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":1,"parentType":{"ref":128},"signature":"longNew()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":245,"element":{"ref":5},"endPos":3988,"fileName":"./src/hello\\Hello.java","startPos":3968},{"FM3":"Famix-Java-Entities.Class","id":246,"name":"FilterOutputStream","isStub":true,"typeContainer":{"ref":332},"visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":247,"name":"Label","isStub":true,"typeContainer":{"ref":225}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":248,"element":{"ref":384},"endPos":3756,"fileName":"./src/hello\\Hello.java","startPos":3618},{"FM3":"Famix-Java-Entities.Class","id":249,"name":"BLLabel","isStub":true,"typeContainer":{"ref":384}},{"FM3":"Famix-Java-Entities.AnnotationInstance","id":250,"annotatedEntity":{"ref":359},"annotationType":{"ref":241}},{"FM3":"Famix-Java-Entities.Class","id":251,"name":"Object","isStub":true,"typeContainer":{"ref":485}},{"FM3":"Famix-Java-Entities.Access","id":252,"accessor":{"ref":125},"previous":{"ref":290},"variable":{"ref":15}},{"FM3":"Famix-Java-Entities.Access","id":253,"accessor":{"ref":450},"previous":{"ref":309},"variable":{"ref":15}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":254,"element":{"ref":178},"endPos":4472,"fileName":"./src/hello\\Hello.java","startPos":4277},{"FM3":"Famix-Java-Entities.Method","id":255,"name":"onInternalMethod","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":1,"parentType":{"ref":142},"signature":"onInternalMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":256,"element":{"ref":613},"endPos":2513,"fileName":"./src/hello\\Hello.java","startPos":2315},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":257,"element":{"ref":296},"endPos":2201,"fileName":"./src/hello\\Hello.java","startPos":2097},{"FM3":"Famix-Java-Entities.LocalVariable","id":258,"name":"c","parentBehaviouralEntity":{"ref":458}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":259,"element":{"ref":19},"endPos":4771,"fileName":"./src/hello\\Hello.java","startPos":4729},{"FM3":"Famix-Java-Entities.Reference","id":260,"previous":{"ref":149},"referencer":{"ref":255},"referredType":{"ref":451}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":261,"element":{"ref":244},"endPos":1905,"fileName":"./src/hello\\Hello.java","startPos":1837},{"FM3":"Famix-Java-Entities.Access","id":262,"accessor":{"ref":541},"previous":{"ref":574},"variable":{"ref":1}},{"FM3":"Famix-Java-Entities.Inheritance","id":263,"previous":{"ref":93},"subclass":{"ref":486},"superclass":{"ref":366}},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":264,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":125}},{"FM3":"Famix-Java-Entities.Type","id":265,"name":"BLAbstractLienSimple","isStub":true,"typeContainer":{"ref":128}},{"FM3":"Famix-Java-Entities.Inheritance","id":266,"subclass":{"ref":76},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":267,"element":{"ref":21},"endPos":4800,"fileName":"./src/hello\\Hello.java","startPos":4658},{"FM3":"Famix-Java-Entities.Method","id":268,"name":"externalMethod","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":128},"signature":"externalMethod()","visibility":"private"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":269,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":431}},{"FM3":"Famix-Java-Entities.Method","id":270,"name":"BLFieldSetPanel","isStub":true,"kind":"constructor","parentType":{"ref":273},"signature":"BLFieldSetPanel(?,?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":271,"element":{"ref":521},"endPos":2301,"fileName":"./src/hello\\Hello.java","startPos":2287},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":272,"element":{"ref":479},"endPos":3965,"fileName":"./src/hello\\Hello.java","startPos":3949},{"FM3":"Famix-Java-Entities.Class","id":273,"name":"BLFieldSetPanel","isStub":true,"typeContainer":{"ref":300}},{"FM3":"Famix-Java-Entities.Invocation","id":274,"candidates":[{"ref":546}],"previous":{"ref":110},"sender":{"ref":111},"signature":"addClickHandler(new ClickHandler(){
  @Override public void onClick(  final ClickEvent event){
    setValue(\"chosen by rel\");
    hide();
  }
}
)"},{"FM3":"Famix-Java-Entities.Reference","id":275,"previous":{"ref":194},"referencer":{"ref":125},"referredType":{"ref":451}},{"FM3":"Famix-Java-Entities.Inheritance","id":276,"previous":{"ref":116},"subclass":{"ref":486},"superclass":{"ref":27}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":277,"element":{"ref":541},"endPos":777,"fileName":"./src/hello\\Hello.java","startPos":732},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":278,"element":{"ref":111},"endPos":3250,"fileName":"./src/hello\\Hello.java","startPos":2906},{"FM3":"Famix-Java-Entities.Parameter","id":279,"name":"event","parentBehaviouralEntity":{"ref":403}},{"FM3":"Famix-Java-Entities.Method","id":280,"name":"hide","isStub":true,"parentType":{"ref":314},"signature":"hide()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":281,"element":{"ref":138},"endPos":1116,"fileName":"./src/hello\\Hello.java","startPos":1107},{"FM3":"Famix-Java-Entities.Method","id":282,"name":"classPropertyAccess","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":1,"parentType":{"ref":128},"signature":"classPropertyAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.Method","id":283,"name":"show","isStub":true,"parentType":{"ref":314},"signature":"show()","visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":284,"name":"A_FINAL_STRING","declaredType":{"ref":486},"isClassSide":true,"isFinal":true,"parentType":{"ref":401},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":285,"element":{"ref":556},"endPos":3264,"fileName":"./src/hello\\Hello.java","startPos":2888},{"FM3":"Famix-Java-Entities.Method","id":286,"name":"HashMap","isStub":true,"kind":"constructor","parentType":{"ref":474},"signature":"HashMap()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":287,"subclass":{"ref":339},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Invocation","id":288,"candidates":[{"ref":507}],"previous":{"ref":96},"receiver":{"ref":1},"sender":{"ref":541},"signature":"put(\"3\",\"3\")"},{"FM3":"Famix-Java-Entities.Reference","id":289,"previous":{"ref":328},"referencer":{"ref":384},"referredType":{"ref":249}},{"FM3":"Famix-Java-Entities.Access","id":290,"accessor":{"ref":125},"previous":{"ref":610},"variable":{"ref":596}},{"FM3":"Famix-Java-Entities.Invocation","id":291,"candidates":[{"ref":12}],"receiver":{"ref":187},"sender":{"ref":296},"signature":"toString()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":292,"element":{"ref":389},"endPos":5279,"fileName":"./src/hello\\Hello.java","startPos":5148},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":293,"element":{"ref":176},"endPos":3774,"fileName":"./src/hello\\Hello.java","startPos":3583},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":294,"element":{"ref":50},"endPos":4012,"fileName":"./src/hello\\Hello.java","startPos":3991},{"FM3":"Famix-Java-Entities.Access","id":295,"accessor":{"ref":433},"isWrite":true,"variable":{"ref":284}},{"FM3":"Famix-Java-Entities.Method","id":296,"name":"array","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":128},"signature":"array()","visibility":"private"},{"FM3":"Famix-Java-Entities.Access","id":297,"accessor":{"ref":450},"previous":{"ref":399},"variable":{"ref":376}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":298,"element":{"ref":299},"endPos":1981,"fileName":"./src/hello\\Hello.java","startPos":1957},{"FM3":"Famix-Java-Entities.Invocation","id":299,"candidates":[{"ref":441}],"receiver":{"ref":426},"sender":{"ref":282},"signature":"call(Hello.classProperty)"},{"FM3":"Famix-Java-Entities.Method","id":300,"name":"buildLienSimple","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":128},"signature":"buildLienSimple()","visibility":"private"},{"FM3":"Famix-Java-Entities.PrimitiveType","id":301,"name":"int","isStub":true},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":302,"element":{"ref":94},"endPos":3878,"fileName":"./src/hello\\Hello.java","startPos":3864},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":303,"element":{"ref":169},"endPos":4101,"fileName":"./src/hello\\Hello.java","startPos":4076},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":304,"element":{"ref":274},"endPos":3231,"fileName":"./src/hello\\Hello.java","startPos":2928},{"FM3":"Famix-Java-Entities.Method","id":305,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":437},"signature":"Label(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":306,"element":{"ref":55},"endPos":3275,"fileName":"./src/hello\\Hello.java","startPos":2803},{"FM3":"Famix-Java-Entities.Invocation","id":307,"candidates":[{"ref":321}],"previous":{"ref":182},"sender":{"ref":225},"signature":"Label()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":308,"element":{"ref":160},"endPos":3733,"fileName":"./src/hello\\Hello.java","startPos":3706},{"FM3":"Famix-Java-Entities.Access","id":309,"accessor":{"ref":450},"previous":{"ref":297},"variable":{"ref":552}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":310,"element":{"ref":291},"endPos":2194,"fileName":"./src/hello\\Hello.java","startPos":2176},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":311,"element":{"ref":493},"endPos":3564,"fileName":"./src/hello\\Hello.java","startPos":3533},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":312,"element":{"ref":401},"endPos":109,"fileName":"./src/hello\\MyInterface.java","startPos":17},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":313,"element":{"ref":319},"endPos":3145,"fileName":"./src/hello\\Hello.java","startPos":3121},{"FM3":"Famix-Java-Entities.Class","id":314,"name":"<StubMethodContainer>","isStub":true,"typeContainer":{"ref":71}},{"FM3":"Famix-Java-Entities.Reference","id":315,"previous":{"ref":190},"referencer":{"ref":225},"referredType":{"ref":177}},{"FM3":"Famix-Java-Entities.Invocation","id":316,"candidates":[{"ref":129}],"previous":{"ref":3},"receiver":{"ref":596},"sender":{"ref":125},"signature":"println(patate + hello)"},{"FM3":"Famix-Java-Entities.Invocation","id":317,"candidates":[{"ref":270}],"sender":{"ref":300},"signature":"BLFieldSetPanel(\"Lien simple\",\"100%\")"},{"FM3":"Famix-Java-Entities.Package","id":318,"name":"util","isStub":true,"parentPackage":{"ref":78}},{"FM3":"Famix-Java-Entities.Invocation","id":319,"candidates":[{"ref":564}],"receiver":{"ref":595},"sender":{"ref":403},"signature":"setValue(\"chosen by rel\")"},{"FM3":"Famix-Java-Entities.Class","id":320,"name":"Canard","isStub":true,"typeContainer":{"ref":125}},{"FM3":"Famix-Java-Entities.Method","id":321,"name":"Label","isStub":true,"kind":"constructor","parentType":{"ref":247},"signature":"Label()","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":322,"name":"Canard","isStub":true,"typeContainer":{"ref":458}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":323,"endPos":648,"fileName":"./src/hello\\Hello.java","startPos":528},{"FM3":"Famix-Java-Entities.Method","id":324,"name":"returnNumber","cyclomaticComplexity":1,"declaredType":{"ref":301},"numberOfStatements":1,"parentType":{"ref":128},"signature":"returnNumber(int)","visibility":"private"},{"FM3":"Famix-Java-Entities.Reference","id":325,"previous":{"ref":140},"referencer":{"ref":541},"referredType":{"ref":492}},{"FM3":"Famix-Java-Entities.Reference","id":326,"previous":{"ref":315},"referencer":{"ref":225},"referredType":{"ref":133}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":327,"element":{"ref":275},"endPos":1241,"fileName":"./src/hello\\Hello.java","startPos":1236},{"FM3":"Famix-Java-Entities.Reference","id":328,"previous":{"ref":153},"referencer":{"ref":589},"referredType":{"ref":413}},{"FM3":"Famix-Java-Entities.Reference","id":329,"previous":{"ref":355},"referencer":{"ref":458},"referredType":{"ref":38}},{"FM3":"Famix-Java-Entities.Method","id":330,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":151},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":331,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":338}},{"FM3":"Famix-Java-Entities.Package","id":332,"name":"io","isStub":true,"parentPackage":{"ref":78}},{"FM3":"Famix-Java-Entities.Method","id":333,"name":"getInstance","isStub":true,"parentType":{"ref":314},"signature":"getInstance()","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":334,"name":"AutoCloseable","isInterface":true,"isStub":true,"typeContainer":{"ref":485},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":335,"element":{"ref":235},"endPos":4771,"fileName":"./src/hello\\Hello.java","startPos":4724},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":336,"element":{"ref":399},"endPos":2054,"fileName":"./src/hello\\Hello.java","startPos":2037},{"FM3":"Famix-Java-Entities.Invocation","id":337,"candidates":[{"ref":338}],"sender":{"ref":555},"signature":"Hello()"},{"FM3":"Famix-Java-Entities.Method","id":338,"name":"Hello","cyclomaticComplexity":1,"kind":"constructor","numberOfStatements":3,"parentType":{"ref":128},"signature":"Hello()","visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":339,"name":"_Anonymous(Carrefour.Oupsi)","typeContainer":{"ref":613},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":340,"element":{"ref":309},"endPos":2082,"fileName":"./src/hello\\Hello.java","startPos":2072},{"FM3":"Famix-Java-Entities.Invocation","id":341,"candidates":[{"ref":68}],"sender":{"ref":365},"signature":"_Anonymous(Carrefour)()"},{"FM3":"Famix-Java-Entities.Method","id":342,"name":"_Anonymous(QuicksearchExempleREL)","isStub":true,"kind":"constructor","parentType":{"ref":556},"signature":"_Anonymous(QuicksearchExempleREL)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Inheritance","id":343,"subclass":{"ref":483},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Method","id":344,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":151},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":345,"element":{"ref":561},"endPos":3504,"fileName":"./src/hello\\Hello.java","startPos":3483},{"FM3":"Famix-Java-Entities.Invocation","id":346,"candidates":[{"ref":220}],"previous":{"ref":409},"sender":{"ref":467},"signature":"Carrefour()"},{"FM3":"Famix-Java-Entities.Method","id":347,"name":"setCarrefour","isStub":true,"parentType":{"ref":314},"signature":"setCarrefour(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.AnnotationInstance","id":348,"annotatedEntity":{"ref":458},"annotationType":{"ref":241}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":349,"element":{"ref":96},"endPos":578,"fileName":"./src/hello\\Hello.java","startPos":561},{"FM3":"Famix-Java-Entities.Class","id":350,"name":"OutputStream","isAbstract":true,"isStub":true,"typeContainer":{"ref":332},"visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":351,"candidates":[{"ref":163}],"previous":{"ref":124},"sender":{"ref":458},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.Reference","id":352,"previous":{"ref":326},"referencer":{"ref":359},"referredType":{"ref":241}},{"FM3":"Famix-Java-Entities.Access","id":353,"accessor":{"ref":255},"variable":{"ref":596}},{"FM3":"Famix-Java-Entities.Parameter","id":354,"name":"event","parentBehaviouralEntity":{"ref":524}},{"FM3":"Famix-Java-Entities.Reference","id":355,"previous":{"ref":415},"referencer":{"ref":403},"referredType":{"ref":241}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":356,"element":{"ref":101},"endPos":3275,"fileName":"./src/hello\\Hello.java","startPos":2705},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":357,"element":{"ref":409},"endPos":5134,"fileName":"./src/hello\\Hello.java","startPos":4957},{"FM3":"Famix-Java-Entities.Class","id":358,"name":"Appendable","isInterface":true,"isStub":true,"typeContainer":{"ref":485},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":359,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":0,"parentType":{"ref":339},"signature":"execute(boolean)","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":360,"element":{"ref":125},"endPos":1767,"fileName":"./src/hello\\Hello.java","startPos":1158},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":361,"element":{"ref":344},"endPos":1727,"fileName":"./src/hello\\Hello.java","startPos":1631},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":362,"element":{"ref":162},"endPos":4447,"fileName":"./src/hello\\Hello.java","startPos":4390},{"FM3":"Famix-Java-Entities.Class","id":363,"name":"HashMap","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.Invocation","id":364,"candidates":[{"ref":506}],"receiver":{"ref":269},"sender":{"ref":431},"signature":"hello(i)"},{"FM3":"Famix-Java-Entities.Method","id":365,"name":"useThisForFieldAccess","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":4,"parentType":{"ref":128},"signature":"useThisForFieldAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.Class","id":366,"name":"CharSequence","isInterface":true,"isStub":true,"typeContainer":{"ref":485},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":367,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":158},"signature":"_Anonymous(Button)(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":368,"element":{"ref":591},"endPos":4153,"fileName":"./src/hello\\Hello.java","startPos":3892},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":369,"element":{"ref":317},"endPos":2654,"fileName":"./src/hello\\Hello.java","startPos":2613},{"FM3":"Famix-Java-Entities.Access","id":370,"accessor":{"ref":111},"variable":{"ref":216}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":371,"element":{"ref":562},"endPos":1737,"fileName":"./src/hello\\Hello.java","startPos":1582},{"FM3":"Famix-Java-Entities.Method","id":372,"name":"execute","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":0,"parentType":{"ref":483},"signature":"execute(boolean)","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":373,"element":{"ref":555},"endPos":881,"fileName":"./src/hello\\Hello.java","startPos":815},{"FM3":"Famix-Java-Entities.LocalVariable","id":374,"name":"label42","parentBehaviouralEntity":{"ref":384}},{"FM3":"Famix-Java-Entities.Method","id":375,"name":"_Anonymous(Carrefour.Oupsi)","isStub":true,"kind":"constructor","parentType":{"ref":339},"signature":"_Anonymous(Carrefour.Oupsi)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":376,"name":"classProperty","declaredType":{"ref":301},"isClassSide":true,"parentType":{"ref":128},"visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":377,"name":"Canard","isStub":true,"typeContainer":{"ref":458}},{"FM3":"Famix-Java-Entities.Inheritance","id":378,"subclass":{"ref":8},"superclass":{"ref":246}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":379,"element":{"ref":557},"endPos":364,"fileName":"./src/hello\\Hello.java","startPos":360},{"FM3":"Famix-Java-Entities.Inheritance","id":380,"previous":{"ref":84},"subclass":{"ref":350},"superclass":{"ref":604}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":381,"element":{"ref":328},"endPos":3564,"fileName":"./src/hello\\Hello.java","startPos":3543},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":382,"element":{"ref":458},"endPos":3807,"fileName":"./src/hello\\Hello.java","startPos":3290},{"FM3":"Famix-Java-Entities.Invocation","id":383,"candidates":[{"ref":24}],"previous":{"ref":351},"sender":{"ref":458},"signature":"setWidget(new Button(){
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
)"},{"FM3":"Famix-Java-Entities.Method","id":384,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":1,"parentType":{"ref":108},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":385,"element":{"ref":65},"endPos":3275,"fileName":"./src/hello\\Hello.java","startPos":2692},{"FM3":"Famix-Java-Entities.Type","id":386,"name":"BLLabel","isStub":true,"typeContainer":{"ref":128}},{"FM3":"Famix-Java-Entities.Reference","id":387,"previous":{"ref":514},"referencer":{"ref":541},"referredType":{"ref":207}},{"FM3":"Famix-Java-Entities.Class","id":388,"name":"Canard","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.Class","id":389,"name":"InnerHello","typeContainer":{"ref":128},"visibility":"public"},{"FM3":"Famix-Java-Entities.Access","id":390,"accessor":{"ref":524},"variable":{"ref":596}},{"FM3":"Famix-Java-Entities.Inheritance","id":391,"subclass":{"ref":389},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":392,"element":{"ref":40},"endPos":692,"fileName":"./src/hello\\Hello.java","startPos":677},{"FM3":"Famix-Java-Entities.Method","id":393,"name":"_Anonymous(Oupsi)","isStub":true,"kind":"constructor","parentType":{"ref":76},"signature":"_Anonymous(Oupsi)()","visibility":"package"},{"FM3":"Famix-Java-Entities.Parameter","id":394,"name":"event","parentBehaviouralEntity":{"ref":344}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":395,"element":{"ref":279},"endPos":3088,"fileName":"./src/hello\\Hello.java","startPos":3067},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":396,"element":{"ref":364},"endPos":4854,"fileName":"./src/hello\\Hello.java","startPos":4847},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":397,"element":{"ref":288},"endPos":600,"fileName":"./src/hello\\Hello.java","startPos":583},{"FM3":"Famix-Java-Entities.Invocation","id":398,"candidates":[{"ref":422}],"previous":{"ref":383},"sender":{"ref":458},"signature":"_Anonymous(Button)()"},{"FM3":"Famix-Java-Entities.Access","id":399,"accessor":{"ref":450},"variable":{"ref":552}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":400,"element":{"ref":170},"endPos":1558,"fileName":"./src/hello\\Hello.java","startPos":1313},{"FM3":"Famix-Java-Entities.Class","id":401,"name":"MyInterface","isInterface":true,"typeContainer":{"ref":498},"visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":402,"element":{"ref":359},"endPos":2495,"fileName":"./src/hello\\Hello.java","startPos":2426},{"FM3":"Famix-Java-Entities.Method","id":403,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":535},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":404,"candidates":[{"ref":507}],"previous":{"ref":139},"receiver":{"ref":1},"sender":{"ref":541},"signature":"put(\"1\",\"1\")"},{"FM3":"Famix-Java-Entities.Inheritance","id":405,"subclass":{"ref":172},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.LocalVariable","id":406,"name":"innertButton","parentBehaviouralEntity":{"ref":524}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":407,"element":{"ref":102},"endPos":644,"fileName":"./src/hello\\Hello.java","startPos":627},{"FM3":"Famix-Java-Entities.Invocation","id":408,"candidates":[{"ref":24}],"sender":{"ref":268},"signature":"setWidget(new Button(\"I''am a Button\"){
  public void onInternalMethod(  final ClickEvent event){
    System.out.println(someLocalVariableDefineInExternalScope);
  }
}
)"},{"FM3":"Famix-Java-Entities.Invocation","id":409,"candidates":[{"ref":393}],"sender":{"ref":467},"signature":"_Anonymous(Oupsi)()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":410,"element":{"ref":91},"endPos":1760,"fileName":"./src/hello\\Hello.java","startPos":1756},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":411,"element":{"ref":376},"endPos":312,"fileName":"./src/hello\\Hello.java","startPos":300},{"FM3":"Famix-Java-Entities.PrimitiveType","id":412,"name":"boolean","isStub":true},{"FM3":"Famix-Java-Entities.Class","id":413,"name":"BLLabel","isStub":true,"typeContainer":{"ref":589}},{"FM3":"Famix-Java-Entities.Class","id":414,"name":"BLLabel","isStub":true,"typeContainer":{"ref":167}},{"FM3":"Famix-Java-Entities.Reference","id":415,"previous":{"ref":419},"referencer":{"ref":403},"referredType":{"ref":241}},{"FM3":"Famix-Java-Entities.Invocation","id":416,"candidates":[{"ref":507}],"previous":{"ref":288},"receiver":{"ref":1},"sender":{"ref":541},"signature":"put(\"4\",\"4\")"},{"FM3":"Famix-Java-Entities.Class","id":417,"name":"BLLabel","isStub":true,"typeContainer":{"ref":167}},{"FM3":"Famix-Java-Entities.Reference","id":418,"previous":{"ref":260},"referencer":{"ref":490},"referredType":{"ref":36}},{"FM3":"Famix-Java-Entities.Reference","id":419,"previous":{"ref":352},"referencer":{"ref":300},"referredType":{"ref":195}},{"FM3":"Famix-Java-Entities.Class","id":420,"name":"Box","isStub":true,"typeContainer":{"ref":516}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":421,"element":{"ref":394},"endPos":1672,"fileName":"./src/hello\\Hello.java","startPos":1651},{"FM3":"Famix-Java-Entities.Method","id":422,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":172},"signature":"_Anonymous(Button)()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":423,"element":{"ref":43},"endPos":1557,"fileName":"./src/hello\\Hello.java","startPos":1325},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":424,"element":{"ref":415},"endPos":3021,"fileName":"./src/hello\\Hello.java","startPos":3014},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":425,"element":{"ref":517},"endPos":807,"fileName":"./src/hello\\Hello.java","startPos":791},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":426,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":282}},{"FM3":"Famix-Java-Entities.Reference","id":427,"previous":{"ref":206},"referencer":{"ref":541},"referredType":{"ref":39}},{"FM3":"Famix-Java-Entities.Reference","id":428,"referencer":{"ref":541},"referredType":{"ref":363}},{"FM3":"Famix-Java-Entities.SourceLanguage","id":429,},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":430,"element":{"ref":20},"endPos":5109,"fileName":"./src/hello\\Hello.java","startPos":5071},{"FM3":"Famix-Java-Entities.Method","id":431,"name":"decla","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":1,"parentType":{"ref":128},"signature":"decla(int)","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":432,"element":{"ref":86},"endPos":1268,"fileName":"./src/hello\\Hello.java","startPos":1264},{"FM3":"Famix-Java-Entities.Method","id":433,"name":"<Initializer>","cyclomaticComplexity":0,"numberOfStatements":0,"parentType":{"ref":401},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":434,"element":{"ref":167},"endPos":3885,"fileName":"./src/hello\\Hello.java","startPos":3814},{"FM3":"Famix-Java-Entities.Attribute","id":435,"name":"hello","declaredType":{"ref":301},"parentType":{"ref":128},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":436,"element":{"ref":427},"endPos":692,"fileName":"./src/hello\\Hello.java","startPos":677},{"FM3":"Famix-Java-Entities.Class","id":437,"name":"Label","isStub":true,"typeContainer":{"ref":490}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":438,"element":{"ref":194},"endPos":874,"fileName":"./src/hello\\Hello.java","startPos":864},{"FM3":"Famix-Java-Entities.Class","id":439,"name":"BLLabel","isStub":true,"typeContainer":{"ref":589}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":440,"element":{"ref":127},"endPos":4600,"fileName":"./src/hello\\Hello.java","startPos":4564},{"FM3":"Famix-Java-Entities.Method","id":441,"name":"call","isStub":true,"parentType":{"ref":314},"signature":"call(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":442,"accessor":{"ref":365},"isWrite":true,"variable":{"ref":237}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":443,"element":{"ref":132},"endPos":4369,"fileName":"./src/hello\\Hello.java","startPos":4348},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":444,"element":{"ref":553},"endPos":3380,"fileName":"./src/hello\\Hello.java","startPos":3355},{"FM3":"Famix-Java-Entities.Type","id":445,"name":"ImageButton","isStub":true,"typeContainer":{"ref":591}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":446,"element":{"ref":225},"endPos":2308,"fileName":"./src/hello\\Hello.java","startPos":2208},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":447,"element":{"ref":398},"endPos":3799,"fileName":"./src/hello\\Hello.java","startPos":3436},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":448,"element":{"ref":611},"endPos":5134,"fileName":"./src/hello\\Hello.java","startPos":4951},{"FM3":"Famix-Java-Entities.Invocation","id":449,"candidates":[{"ref":494}],"previous":{"ref":198},"receiver":{"ref":552},"sender":{"ref":450},"signature":"call2(this.patate)"},{"FM3":"Famix-Java-Entities.Method","id":450,"name":"fieldAccess","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":128},"signature":"fieldAccess()","visibility":"private"},{"FM3":"Famix-Java-Entities.Class","id":451,"name":"System","isFinal":true,"isStub":true,"typeContainer":{"ref":485},"visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":452,"candidates":[{"ref":571}],"previous":{"ref":601},"sender":{"ref":516},"signature":"getText()"},{"FM3":"Famix-Java-Entities.Class","id":453,"name":"Canard","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.Class","id":454,"name":"Canard","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.Invocation","id":455,"candidates":[{"ref":546}],"previous":{"ref":127},"sender":{"ref":490},"signature":"addClickHandler(new ClickHandler(){
  @Override public void onClick(  ClickEvent event){
    Box db=new Box(externalIdentifier.getText(),true);
    db.show();
  }
}
)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":456,"element":{"ref":543},"endPos":691,"fileName":"./src/hello\\Hello.java","startPos":688},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":457,"element":{"ref":351},"endPos":3413,"fileName":"./src/hello\\Hello.java","startPos":3402},{"FM3":"Famix-Java-Entities.Method","id":458,"name":"doubleInsideMethod","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":3,"parentType":{"ref":128},"signature":"doubleInsideMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":459,"previous":{"ref":275},"referencer":{"ref":125},"referredType":{"ref":222}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":460,"element":{"ref":455},"endPos":4801,"fileName":"./src/hello\\Hello.java","startPos":4605},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":461,"element":{"ref":58},"endPos":3230,"fileName":"./src/hello\\Hello.java","startPos":2967},{"FM3":"Famix-Java-Entities.Class","id":462,"name":"ImageButtonTreeUtils","isStub":true,"typeContainer":{"ref":591}},{"FM3":"Famix-Java-Entities.Access","id":463,"accessor":{"ref":541},"previous":{"ref":527},"variable":{"ref":1}},{"FM3":"Famix-Java-Entities.Access","id":464,"accessor":{"ref":541},"isWrite":true,"variable":{"ref":1}},{"FM3":"Famix-Java-Entities.Class","id":465,"name":"ImageButtonTreeUtils","isStub":true,"typeContainer":{"ref":591}},{"FM3":"Famix-Java-Entities.Inheritance","id":466,"previous":{"ref":380},"subclass":{"ref":350},"superclass":{"ref":203}},{"FM3":"Famix-Java-Entities.Method","id":467,"name":"newAnonymousOfInnerClassFromAnonymousAndAffectation","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":1,"parentType":{"ref":128},"signature":"newAnonymousOfInnerClassFromAnonymousAndAffectation()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":468,"element":{"ref":63},"endPos":1803,"fileName":"./src/hello\\Hello.java","startPos":1799},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":469,"element":{"ref":156},"endPos":1712,"fileName":"./src/hello\\Hello.java","startPos":1701},{"FM3":"Famix-Java-Entities.Parameter","id":470,"name":"bb","declaredType":{"ref":412},"parentBehaviouralEntity":{"ref":359}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":471,"element":{"ref":42},"endPos":1479,"fileName":"./src/hello\\Hello.java","startPos":1475},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":472,"element":{"ref":370},"endPos":2949,"fileName":"./src/hello\\Hello.java","startPos":2928},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":473,"element":{"ref":240},"endPos":2270,"fileName":"./src/hello\\Hello.java","startPos":2256},{"FM3":"Famix-Java-Entities.Class","id":474,"name":"HashMap","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.Invocation","id":475,"candidates":[{"ref":215}],"previous":{"ref":175},"sender":{"ref":524},"signature":"Button()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":476,"element":{"ref":197},"endPos":4671,"fileName":"./src/hello\\Hello.java","startPos":4664},{"FM3":"Famix-Java-Entities.Invocation","id":477,"candidates":[{"ref":280}],"previous":{"ref":319},"receiver":{"ref":595},"sender":{"ref":403},"signature":"hide()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":478,"element":{"ref":124},"endPos":3380,"fileName":"./src/hello\\Hello.java","startPos":3363},{"FM3":"Famix-Java-Entities.Parameter","id":479,"name":"path","declaredType":{"ref":486},"parentBehaviouralEntity":{"ref":591}},{"FM3":"Famix-Java-Entities.Access","id":480,"accessor":{"ref":344},"isWrite":true,"variable":{"ref":557}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":481,"element":{"ref":404},"endPos":556,"fileName":"./src/hello\\Hello.java","startPos":539},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":482,"element":{"ref":590},"endPos":3878,"fileName":"./src/hello\\Hello.java","startPos":3864},{"FM3":"Famix-Java-Entities.Class","id":483,"name":"_Anonymous(Carrefour)","typeContainer":{"ref":365},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":484,"element":{"ref":594},"endPos":692,"fileName":"./src/hello\\Hello.java","startPos":677},{"FM3":"Famix-Java-Entities.Package","id":485,"name":"lang","isStub":true,"parentPackage":{"ref":78}},{"FM3":"Famix-Java-Entities.Class","id":486,"name":"String","isFinal":true,"isStub":true,"typeContainer":{"ref":485},"visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":487,"name":"_Anonymous(Button)","isStub":true,"kind":"constructor","parentType":{"ref":108},"signature":"_Anonymous(Button)()","visibility":"package"},{"FM3":"Famix-Java-Entities.PrimitiveType","id":488,"name":"void","isStub":true},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":489,"element":{"ref":7},"endPos":4254,"fileName":"./src/hello\\Hello.java","startPos":4207},{"FM3":"Famix-Java-Entities.Method","id":490,"name":"externalIdentifierMethod","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":128},"signature":"externalIdentifierMethod()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":491,"element":{"ref":325},"endPos":724,"fileName":"./src/hello\\Hello.java","startPos":713},{"FM3":"Famix-Java-Entities.Class","id":492,"name":"Canard","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.LocalVariable","id":493,"name":"label41","parentBehaviouralEntity":{"ref":589}},{"FM3":"Famix-Java-Entities.Method","id":494,"name":"call2","isStub":true,"parentType":{"ref":314},"signature":"call2(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Access","id":495,"accessor":{"ref":365},"isWrite":true,"previous":{"ref":442},"variable":{"ref":15}},{"FM3":"Famix-Java-Entities.Access","id":496,"accessor":{"ref":541},"isWrite":true,"previous":{"ref":543},"variable":{"ref":557}},{"FM3":"Famix-Java-Entities.Access","id":497,"accessor":{"ref":365},"isWrite":true,"previous":{"ref":495},"variable":{"ref":237}},{"FM3":"Famix-Java-Entities.Package","id":498,"name":"hello"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":499,"element":{"ref":172},"endPos":3799,"fileName":"./src/hello\\Hello.java","startPos":3449},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":500,"element":{"ref":35},"endPos":1532,"fileName":"./src/hello\\Hello.java","startPos":1521},{"FM3":"Famix-Java-Entities.Inheritance","id":501,"subclass":{"ref":314},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":502,"element":{"ref":403},"endPos":3208,"fileName":"./src/hello\\Hello.java","startPos":3013},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":503,"element":{"ref":593},"endPos":945,"fileName":"./src/hello\\Hello.java","startPos":940},{"FM3":"Famix-Java-Entities.Method","id":504,"name":"innerHelloMethod","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":389},"signature":"innerHelloMethod()","visibility":"public"},{"FM3":"Famix-Java-Entities.Invocation","id":505,"candidates":[{"ref":230}],"sender":{"ref":589},"signature":"BLLabel(\"inside \")"},{"FM3":"Famix-Java-Entities.Method","id":506,"name":"hello","isStub":true,"parentType":{"ref":314},"signature":"hello(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Method","id":507,"name":"put","declaredType":{"ref":107},"isAbstract":true,"isStub":true,"parentType":{"ref":145},"signature":"put(K,V)","visibility":"public"},{"FM3":"Famix-Java-Entities.LocalVariable","id":508,"name":"c","parentBehaviouralEntity":{"ref":125}},{"FM3":"Famix-Java-Entities.Parameter","id":509,"name":"i","declaredType":{"ref":301},"parentBehaviouralEntity":{"ref":431}},{"FM3":"Famix-Java-Entities.Reference","id":510,"previous":{"ref":19},"referencer":{"ref":467},"referredType":{"ref":32}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":511,"element":{"ref":300},"endPos":3283,"fileName":"./src/hello\\Hello.java","startPos":2520},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":512,"element":{"ref":535},"endPos":3230,"fileName":"./src/hello\\Hello.java","startPos":2986},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":513,"element":{"ref":15},"endPos":331,"fileName":"./src/hello\\Hello.java","startPos":326},{"FM3":"Famix-Java-Entities.Reference","id":514,"previous":{"ref":325},"referencer":{"ref":541},"referredType":{"ref":69}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":515,"element":{"ref":483},"endPos":1144,"fileName":"./src/hello\\Hello.java","startPos":1073},{"FM3":"Famix-Java-Entities.Method","id":516,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":21},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Attribute","id":517,"name":"c7","parentType":{"ref":128}},{"FM3":"Famix-Java-Entities.Package","id":518,"name":"constant","isStub":true,"parentPackage":{"ref":485}},{"FM3":"Famix-Java-Entities.Inheritance","id":519,"subclass":{"ref":55},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":520,"element":{"ref":567},"endPos":692,"fileName":"./src/hello\\Hello.java","startPos":661},{"FM3":"Famix-Java-Entities.LocalVariable","id":521,"name":"j","parentBehaviouralEntity":{"ref":225}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":522,"element":{"ref":151},"endPos":1737,"fileName":"./src/hello\\Hello.java","startPos":1616},{"FM3":"Famix-Java-Entities.Invocation","id":523,"candidates":[{"ref":333}],"previous":{"ref":234},"sender":{"ref":591},"signature":"getInstance()"},{"FM3":"Famix-Java-Entities.Method","id":524,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":158},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":525,"element":{"ref":387},"endPos":807,"fileName":"./src/hello\\Hello.java","startPos":796},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":526,"element":{"ref":504},"endPos":5273,"fileName":"./src/hello\\Hello.java","startPos":5191},{"FM3":"Famix-Java-Entities.Access","id":527,"accessor":{"ref":541},"previous":{"ref":464},"variable":{"ref":1}},{"FM3":"Famix-Java-Entities.Method","id":528,"name":"_Anonymous(ClickHandler)","isStub":true,"kind":"constructor","parentType":{"ref":21},"signature":"_Anonymous(ClickHandler)()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":529,"element":{"ref":514},"endPos":807,"fileName":"./src/hello\\Hello.java","startPos":796},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":530,"element":{"ref":510},"endPos":4971,"fileName":"./src/hello\\Hello.java","startPos":4957},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":531,"element":{"ref":171},"endPos":724,"fileName":"./src/hello\\Hello.java","startPos":713},{"FM3":"Famix-Java-Entities.Invocation","id":532,"candidates":[{"ref":283}],"previous":{"ref":452},"sender":{"ref":516},"signature":"show()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":533,"element":{"ref":179},"endPos":1738,"fileName":"./src/hello\\Hello.java","startPos":1570},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":534,"element":{"ref":383},"endPos":3800,"fileName":"./src/hello\\Hello.java","startPos":3424},{"FM3":"Famix-Java-Entities.Class","id":535,"name":"_Anonymous(ClickHandler)","typeContainer":{"ref":111},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":536,"element":{"ref":480},"endPos":1697,"fileName":"./src/hello\\Hello.java","startPos":1693},{"FM3":"Famix-Java-Entities.Invocation","id":537,"candidates":[{"ref":559}],"previous":{"ref":316},"sender":{"ref":125},"signature":"Canard()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":538,"element":{"ref":175},"endPos":1480,"fileName":"./src/hello\\Hello.java","startPos":1430},{"FM3":"Famix-Java-Entities.Parameter","id":539,"name":"event","parentBehaviouralEntity":{"ref":384}},{"FM3":"Famix-Java-Entities.Parameter","id":540,"name":"action","declaredType":{"ref":301},"parentBehaviouralEntity":{"ref":591}},{"FM3":"Famix-Java-Entities.Method","id":541,"name":"<Initializer>","cyclomaticComplexity":1,"numberOfStatements":7,"parentType":{"ref":128},"signature":"<Initializer>()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":542,"element":{"ref":442},"endPos":1016,"fileName":"./src/hello\\Hello.java","startPos":1006},{"FM3":"Famix-Java-Entities.Access","id":543,"accessor":{"ref":541},"previous":{"ref":262},"variable":{"ref":1}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":544,"element":{"ref":337},"endPos":874,"fileName":"./src/hello\\Hello.java","startPos":864},{"FM3":"Famix-Java-Entities.Method","id":545,"name":"println","declaredType":{"ref":488},"isStub":true,"parentType":{"ref":8},"signature":"println(char[])","visibility":"public"},{"FM3":"Famix-Java-Entities.Method","id":546,"name":"addClickHandler","isStub":true,"parentType":{"ref":314},"signature":"addClickHandler(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":547,"element":{"ref":610},"endPos":1223,"fileName":"./src/hello\\Hello.java","startPos":1219},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":548,"element":{"ref":18},"endPos":5050,"fileName":"./src/hello\\Hello.java","startPos":5041},{"FM3":"Famix-Java-Entities.Method","id":549,"name":"confirmGroupRemoval","isStub":true,"parentType":{"ref":314},"signature":"confirmGroupRemoval()","visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":550,"element":{"ref":470},"endPos":2477,"fileName":"./src/hello\\Hello.java","startPos":2468},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":551,"element":{"ref":365},"endPos":1151,"fileName":"./src/hello\\Hello.java","startPos":959},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":552,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":450}},{"FM3":"Famix-Java-Entities.LocalVariable","id":553,"name":"label","parentBehaviouralEntity":{"ref":458}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":554,"element":{"ref":284},"endPos":105,"fileName":"./src/hello\\MyInterface.java","startPos":79},{"FM3":"Famix-Java-Entities.Method","id":555,"name":"main","cyclomaticComplexity":1,"declaredType":{"ref":488},"isClassSide":true,"numberOfStatements":1,"parentType":{"ref":128},"signature":"main(String[])","visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":556,"name":"_Anonymous(QuicksearchExempleREL)","typeContainer":{"ref":119},"visibility":"package"},{"FM3":"Famix-Java-Entities.Attribute","id":557,"name":"label","declaredType":{"ref":486},"parentType":{"ref":128},"visibility":"package"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":558,"element":{"ref":290},"endPos":1245,"fileName":"./src/hello\\Hello.java","startPos":1236},{"FM3":"Famix-Java-Entities.Method","id":559,"name":"Canard","isStub":true,"kind":"constructor","parentType":{"ref":320},"signature":"Canard()","visibility":"package"},{"FM3":"Famix-Java-Entities.Type","id":560,"name":"QuicksearchExempleREL","isStub":true,"typeContainer":{"ref":55}},{"FM3":"Famix-Java-Entities.Parameter","id":561,"name":"event","parentBehaviouralEntity":{"ref":589}},{"FM3":"Famix-Java-Entities.Invocation","id":562,"candidates":[{"ref":330}],"previous":{"ref":179},"sender":{"ref":125},"signature":"_Anonymous(Button)(\"I''am another Button\")"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":563,"element":{"ref":316},"endPos":1269,"fileName":"./src/hello\\Hello.java","startPos":1236},{"FM3":"Famix-Java-Entities.Method","id":564,"name":"setValue","isStub":true,"parentType":{"ref":314},"signature":"setValue(?)","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":565,"name":"HashMap","isStub":true,"typeContainer":{"ref":541}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":566,"element":{"ref":576},"endPos":918,"fileName":"./src/hello\\Hello.java","startPos":913},{"FM3":"Famix-Java-Entities.Attribute","id":567,"name":"complexCanard","parentType":{"ref":128}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":568,"element":{"ref":537},"endPos":1302,"fileName":"./src/hello\\Hello.java","startPos":1291},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":569,"element":{"ref":477},"endPos":3181,"fileName":"./src/hello\\Hello.java","startPos":3176},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":570,"element":{"ref":282},"endPos":1988,"fileName":"./src/hello\\Hello.java","startPos":1912},{"FM3":"Famix-Java-Entities.Method","id":571,"name":"getText","isStub":true,"parentType":{"ref":314},"signature":"getText()","visibility":"package"},{"FM3":"Famix-Java-Entities.Class","id":572,"name":"Button","isStub":true,"typeContainer":{"ref":524}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":573,"element":{"ref":307},"endPos":2301,"fileName":"./src/hello\\Hello.java","startPos":2291},{"FM3":"Famix-Java-Entities.Access","id":574,"accessor":{"ref":541},"previous":{"ref":82},"variable":{"ref":1}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":575,"element":{"ref":297},"endPos":2054,"fileName":"./src/hello\\Hello.java","startPos":2037},{"FM3":"Famix-Java-Entities.Access","id":576,"accessor":{"ref":338},"isWrite":true,"variable":{"ref":15}},{"FM3":"Famix-Java-Entities.Class","id":577,"name":"BLLabel","isStub":true,"typeContainer":{"ref":458}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":578,"element":{"ref":597},"endPos":1980,"fileName":"./src/hello\\Hello.java","startPos":1962},{"FM3":"Famix-Java-Entities.Reference","id":579,"previous":{"ref":459},"referencer":{"ref":524},"referredType":{"ref":451}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":580,"element":{"ref":390},"endPos":1439,"fileName":"./src/hello\\Hello.java","startPos":1430},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":581,"element":{"ref":209},"endPos":2505,"fileName":"./src/hello\\Hello.java","startPos":2390},{"FM3":"Famix-Java-Entities.Type","id":582,"name":"Label","isStub":true,"typeContainer":{"ref":128}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":583,"element":{"ref":467},"endPos":5141,"fileName":"./src/hello\\Hello.java","startPos":4868},{"FM3":"Famix-Java-Entities.Method","id":584,"name":"String","isStub":true,"kind":"constructor","parentType":{"ref":486},"signature":"String()","visibility":"public"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":585,"element":{"ref":452},"endPos":4764,"fileName":"./src/hello\\Hello.java","startPos":4737},{"FM3":"Famix-Java-Entities.Inheritance","id":586,"subclass":{"ref":486},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.Invocation","id":587,"candidates":[{"ref":338}],"sender":{"ref":244},"signature":"Hello()"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":588,"element":{"ref":198},"endPos":2055,"fileName":"./src/hello\\Hello.java","startPos":2032},{"FM3":"Famix-Java-Entities.Method","id":589,"name":"onClick","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":2,"parentType":{"ref":172},"signature":"onClick()","visibility":"public"},{"FM3":"Famix-Java-Entities.Reference","id":590,"previous":{"ref":289},"referencer":{"ref":167},"referredType":{"ref":414}},{"FM3":"Famix-Java-Entities.Method","id":591,"name":"getMenuIcon","cyclomaticComplexity":1,"declaredType":{"ref":445},"isClassSide":true,"numberOfStatements":1,"parentType":{"ref":128},"signature":"getMenuIcon()","visibility":"private"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":592,"element":{"ref":338},"endPos":952,"fileName":"./src/hello\\Hello.java","startPos":888},{"FM3":"Famix-Java-Entities.Invocation","id":593,"candidates":[{"ref":125}],"receiver":{"ref":331},"sender":{"ref":338},"signature":"test()"},{"FM3":"Famix-Java-Entities.Invocation","id":594,"candidates":[{"ref":79}],"previous":{"ref":102},"sender":{"ref":541},"signature":"Canard(aMap)"},{"FM3":"Famix-Java-Entities.ImplicitVariable","id":595,"name":"self","isStub":true,"parentBehaviouralEntity":{"ref":403}},{"FM3":"Famix-Java-Entities.Attribute","id":596,"name":"out","isClassSide":true,"isFinal":true,"isStub":true,"parentType":{"ref":451},"visibility":"public"},{"FM3":"Famix-Java-Entities.Access","id":597,"accessor":{"ref":282},"variable":{"ref":376}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":598,"element":{"ref":289},"endPos":3733,"fileName":"./src/hello\\Hello.java","startPos":3706},{"FM3":"Famix-Java-Entities.Inheritance","id":599,"subclass":{"ref":142},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":600,"element":{"ref":495},"endPos":1016,"fileName":"./src/hello\\Hello.java","startPos":1006},{"FM3":"Famix-Java-Entities.Invocation","id":601,"candidates":[{"ref":159}],"sender":{"ref":516},"signature":"Box(externalIdentifier.getText(),true)"},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":602,"element":{"ref":416},"endPos":622,"fileName":"./src/hello\\Hello.java","startPos":605},{"FM3":"Famix-Java-Entities.Inheritance","id":603,"previous":{"ref":586},"subclass":{"ref":486},"superclass":{"ref":88}},{"FM3":"Famix-Java-Entities.Class","id":604,"name":"Closeable","isInterface":true,"isStub":true,"typeContainer":{"ref":332},"visibility":"public"},{"FM3":"Famix-Java-Entities.Class","id":605,"name":"Box","isStub":true,"typeContainer":{"ref":516}},{"FM3":"Famix-Java-Entities.Inheritance","id":606,"subclass":{"ref":535},"superclass":{"ref":251}},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":607,"element":{"ref":114},"endPos":2654,"fileName":"./src/hello\\Hello.java","startPos":2597},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":608,"element":{"ref":315},"endPos":2270,"fileName":"./src/hello\\Hello.java","startPos":2260},{"FM3":"Famix-Java-Entities.IndexedFileAnchor","id":609,"element":{"ref":408},"endPos":4473,"fileName":"./src/hello\\Hello.java","startPos":4265},{"FM3":"Famix-Java-Entities.Access","id":610,"accessor":{"ref":125},"previous":{"ref":137},"variable":{"ref":435}},{"FM3":"Famix-Java-Entities.LocalVariable","id":611,"name":"oup","parentBehaviouralEntity":{"ref":467}},{"FM3":"Famix-Java-Entities.ParameterizedType","id":612,"name":"Map","arguments":[{"ref":486}],"isStub":true,"parameterizableClass":{"ref":145},"typeContainer":{"ref":318}},{"FM3":"Famix-Java-Entities.Method","id":613,"name":"newAnonymousOfInnerClass","cyclomaticComplexity":1,"declaredType":{"ref":488},"numberOfStatements":1,"parentType":{"ref":128},"signature":"newAnonymousOfInnerClass()","visibility":"private"}]'
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
