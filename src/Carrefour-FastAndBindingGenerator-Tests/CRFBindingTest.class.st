Class {
	#name : #CRFBindingTest,
	#superclass : #TestCase,
	#instVars : [
		'famixModel',
		'fastModel'
	],
	#category : #'Carrefour-FastAndBindingGenerator-Tests'
}

{ #category : #accessing }
CRFBindingTest >> famixModel [
	^ famixModel
]

{ #category : #accessing }
CRFBindingTest >> famixModel: anObject [
	famixModel := anObject
]

{ #category : #'as yet unclassified' }
CRFBindingTest >> famixModelString [
	"package hello;

public class Hello {
    String patate;
    int hello;

    public static void main(String[] args) {
        new Hello();
    }

    public Hello(){
        patate = ""Patate"";
        test();
    }


    public int test () {
        hello = returnNumber(5);
        hello++;
        System.out.println(patate + hello);
        return hello;
    }

    private int returnNumber(int i){
        return i;
    }

}"

	^ '(
	(FAMIX.Attribute (id: 1)
		(name ''hello'')
		(declaredType (ref: 27))
		(parentType (ref: 26))
		(sourceAnchor (ref: 28)))
	(FAMIX.Class (id: 2)
		(name ''Flushable'')
		(container (ref: 45))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Invocation (id: 3)
		(candidates (ref: 63))
		(previous (ref: 38))
		(receiver (ref: 10))
		(sender (ref: 13))
		(signature ''println(patate + hello)'')
		(sourceAnchor (ref: 54)))
	(FAMIX.Attribute (id: 4)
		(name ''patate'')
		(declaredType (ref: 69))
		(parentType (ref: 26))
		(sourceAnchor (ref: 18)))
	(FAMIX.IndexedFileAnchor (id: 5)
		(element (ref: 46))
		(endPos 143)
		(fileName ''../testing/hello/test.java'')
		(startPos 133))
	(FAMIX.IndexedFileAnchor (id: 6)
		(element (ref: 14))
		(endPos 351)
		(fileName ''../testing/hello/test.java'')
		(startPos 347))
	(FAMIX.Class (id: 7)
		(name ''AutoCloseable'')
		(container (ref: 25))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.ParameterizableClass (id: 8)
		(name ''Comparable'')
		(container (ref: 25))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.IndexedFileAnchor (id: 9)
		(element (ref: 44))
		(endPos 328)
		(fileName ''../testing/hello/test.java'')
		(startPos 319))
	(FAMIX.Attribute (id: 10)
		(name ''out'')
		(declaredType (ref: 57))
		(hasClassScope true)
		(isStub true)
		(modifiers ''public'' ''final'')
		(parentType (ref: 52)))
	(FAMIX.Class (id: 11)
		(name ''OutputStream'')
		(container (ref: 45))
		(isStub true)
		(modifiers ''public'' ''abstract''))
	(FAMIX.Inheritance (id: 12)
		(subclass (ref: 69))
		(superclass (ref: 67)))
	(FAMIX.Method (id: 13)
		(name ''test'')
		(cyclomaticComplexity 1)
		(declaredType (ref: 27))
		(modifiers ''public'')
		(numberOfStatements 5)
		(signature ''test()'')
		(parentType (ref: 26))
		(sourceAnchor (ref: 73)))
	(FAMIX.Access (id: 14)
		(accessor (ref: 13))
		(previous (ref: 71))
		(variable (ref: 1))
		(sourceAnchor (ref: 6)))
	(FAMIX.Inheritance (id: 15)
		(subclass (ref: 57))
		(superclass (ref: 74)))
	(FAMIX.Access (id: 16)
		(accessor (ref: 13))
		(previous (ref: 14))
		(variable (ref: 1))
		(sourceAnchor (ref: 56)))
	(FAMIX.Method (id: 17)
		(name ''returnNumber'')
		(cyclomaticComplexity 1)
		(declaredType (ref: 27))
		(modifiers ''private'')
		(numberOfStatements 1)
		(signature ''returnNumber(int)'')
		(parentType (ref: 26))
		(sourceAnchor (ref: 64)))
	(FAMIX.IndexedFileAnchor (id: 18)
		(element (ref: 4))
		(endPos 58)
		(fileName ''../testing/hello/test.java'')
		(startPos 45))
	(FAMIX.ParameterizedType (id: 19)
		(name ''Comparable'')
		(container (ref: 25))
		(isStub true)
		(parameterizableClass (ref: 8)))
	(FAMIX.Inheritance (id: 20)
		(previous (ref: 12))
		(subclass (ref: 69))
		(superclass (ref: 60)))
	(FAMIX.Inheritance (id: 21)
		(subclass (ref: 74))
		(superclass (ref: 11)))
	(FAMIX.Namespace (id: 22)
		(name ''java'')
		(isStub true))
	(FAMIX.Inheritance (id: 23)
		(subclass (ref: 52))
		(superclass (ref: 67)))
	(FAMIX.Access (id: 24)
		(accessor (ref: 48))
		(isWrite true)
		(variable (ref: 4))
		(sourceAnchor (ref: 49)))
	(FAMIX.Namespace (id: 25)
		(name ''lang'')
		(isStub true)
		(parentScope (ref: 22)))
	(FAMIX.Class (id: 26)
		(name ''Hello'')
		(container (ref: 37))
		(modifiers ''public'')
		(sourceAnchor (ref: 41)))
	(FAMIX.PrimitiveType (id: 27)
		(name ''int'')
		(isStub true))
	(FAMIX.IndexedFileAnchor (id: 28)
		(element (ref: 1))
		(endPos 74)
		(fileName ''../testing/hello/test.java'')
		(startPos 65))
	(FAMIX.IndexedFileAnchor (id: 29)
		(element (ref: 35))
		(endPos 151)
		(fileName ''../testing/hello/test.java'')
		(startPos 83))
	(FAMIX.IndexedFileAnchor (id: 30)
		(element (ref: 77))
		(endPos 441)
		(fileName ''../testing/hello/test.java'')
		(startPos 441))
	(FAMIX.Inheritance (id: 31)
		(previous (ref: 39))
		(subclass (ref: 11))
		(superclass (ref: 2)))
	(FAMIX.Parameter (id: 32)
		(name ''i'')
		(declaredType (ref: 27))
		(parentBehaviouralEntity (ref: 17)))
	(FAMIX.IndexedFileAnchor (id: 33)
		(element (ref: 71))
		(endPos 343)
		(fileName ''../testing/hello/test.java'')
		(startPos 338))
	(FAMIX.Inheritance (id: 34)
		(previous (ref: 20))
		(subclass (ref: 69))
		(superclass (ref: 19)))
	(FAMIX.Method (id: 35)
		(name ''main'')
		(cyclomaticComplexity 1)
		(declaredType (ref: 36))
		(hasClassScope true)
		(modifiers ''public'')
		(numberOfStatements 1)
		(signature ''main(String[])'')
		(parentType (ref: 26))
		(sourceAnchor (ref: 29)))
	(FAMIX.PrimitiveType (id: 36)
		(name ''void'')
		(isStub true))
	(FAMIX.Namespace (id: 37)
		(name ''hello''))
	(FAMIX.Invocation (id: 38)
		(candidates (ref: 17))
		(receiver (ref: 65))
		(sender (ref: 13))
		(signature ''returnNumber(5)'')
		(sourceAnchor (ref: 47)))
	(FAMIX.Inheritance (id: 39)
		(previous (ref: 43))
		(subclass (ref: 11))
		(superclass (ref: 72)))
	(FAMIX.Reference (id: 40)
		(source (ref: 35))
		(target (ref: 26))
		(sourceAnchor (ref: 75)))
	(FAMIX.IndexedFileAnchor (id: 41)
		(element (ref: 26))
		(endPos 454)
		(fileName ''../testing/hello/test.java'')
		(startPos 19))
	(FAMIX.Invocation (id: 42)
		(candidates (ref: 13))
		(receiver (ref: 65))
		(sender (ref: 48))
		(signature ''test()'')
		(sourceAnchor (ref: 66)))
	(FAMIX.Inheritance (id: 43)
		(subclass (ref: 11))
		(superclass (ref: 67)))
	(FAMIX.Access (id: 44)
		(accessor (ref: 13))
		(previous (ref: 62))
		(variable (ref: 10))
		(sourceAnchor (ref: 9)))
	(FAMIX.Namespace (id: 45)
		(name ''io'')
		(isStub true)
		(parentScope (ref: 22)))
	(FAMIX.Invocation (id: 46)
		(candidates (ref: 48))
		(sender (ref: 35))
		(signature ''Hello()'')
		(sourceAnchor (ref: 5)))
	(FAMIX.IndexedFileAnchor (id: 47)
		(element (ref: 38))
		(endPos 289)
		(fileName ''../testing/hello/test.java'')
		(startPos 275))
	(FAMIX.Method (id: 48)
		(name ''Hello'')
		(cyclomaticComplexity 1)
		(kind ''constructor'')
		(modifiers ''public'')
		(numberOfStatements 3)
		(signature ''Hello()'')
		(parentType (ref: 26))
		(sourceAnchor (ref: 50)))
	(FAMIX.IndexedFileAnchor (id: 49)
		(element (ref: 24))
		(endPos 190)
		(fileName ''../testing/hello/test.java'')
		(startPos 185))
	(FAMIX.IndexedFileAnchor (id: 50)
		(element (ref: 48))
		(endPos 226)
		(fileName ''../testing/hello/test.java'')
		(startPos 160))
	(FAMIX.IndexedFileAnchor (id: 51)
		(element (ref: 62))
		(endPos 271)
		(fileName ''../testing/hello/test.java'')
		(startPos 267))
	(FAMIX.Class (id: 52)
		(name ''System'')
		(container (ref: 25))
		(isStub true)
		(modifiers ''public'' ''final''))
	(FAMIX.Parameter (id: 53)
		(name ''args'')
		(declaredType (ref: 69))
		(parentBehaviouralEntity (ref: 35)))
	(FAMIX.IndexedFileAnchor (id: 54)
		(element (ref: 3))
		(endPos 352)
		(fileName ''../testing/hello/test.java'')
		(startPos 319))
	(FAMIX.Inheritance (id: 55)
		(subclass (ref: 72))
		(superclass (ref: 7)))
	(FAMIX.IndexedFileAnchor (id: 56)
		(element (ref: 16))
		(endPos 375)
		(fileName ''../testing/hello/test.java'')
		(startPos 371))
	(FAMIX.Class (id: 57)
		(name ''PrintStream'')
		(container (ref: 45))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.JavaSourceLanguage (id: 58))
	(FAMIX.Inheritance (id: 59)
		(previous (ref: 34))
		(subclass (ref: 69))
		(superclass (ref: 78)))
	(FAMIX.Class (id: 60)
		(name ''Serializable'')
		(container (ref: 45))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Inheritance (id: 61)
		(previous (ref: 15))
		(subclass (ref: 57))
		(superclass (ref: 76)))
	(FAMIX.Access (id: 62)
		(accessor (ref: 13))
		(isWrite true)
		(variable (ref: 1))
		(sourceAnchor (ref: 51)))
	(FAMIX.Method (id: 63)
		(name ''println'')
		(declaredType (ref: 36))
		(isStub true)
		(modifiers ''public'')
		(signature ''println(String)'')
		(parentType (ref: 57)))
	(FAMIX.IndexedFileAnchor (id: 64)
		(element (ref: 17))
		(endPos 449)
		(fileName ''../testing/hello/test.java'')
		(startPos 392))
	(FAMIX.ImplicitVariable (id: 65)
		(name ''self'')
		(parentBehaviouralEntity (ref: 48)))
	(FAMIX.IndexedFileAnchor (id: 66)
		(element (ref: 42))
		(endPos 218)
		(fileName ''../testing/hello/test.java'')
		(startPos 213))
	(FAMIX.Class (id: 67)
		(name ''Object'')
		(container (ref: 25))
		(isStub true))
	(FAMIX.Inheritance (id: 68)
		(subclass (ref: 26))
		(superclass (ref: 67)))
	(FAMIX.Class (id: 69)
		(name ''String'')
		(container (ref: 25))
		(isStub true)
		(modifiers ''public'' ''final''))
	(FAMIX.Inheritance (id: 70)
		(previous (ref: 61))
		(subclass (ref: 57))
		(superclass (ref: 72)))
	(FAMIX.Access (id: 71)
		(accessor (ref: 13))
		(previous (ref: 44))
		(variable (ref: 4))
		(sourceAnchor (ref: 33)))
	(FAMIX.Class (id: 72)
		(name ''Closeable'')
		(container (ref: 45))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.IndexedFileAnchor (id: 73)
		(element (ref: 13))
		(endPos 383)
		(fileName ''../testing/hello/test.java'')
		(startPos 237))
	(FAMIX.Class (id: 74)
		(name ''FilterOutputStream'')
		(container (ref: 45))
		(isStub true)
		(modifiers ''public''))
	(FAMIX.IndexedFileAnchor (id: 75)
		(element (ref: 40))
		(endPos 143)
		(fileName ''../testing/hello/test.java'')
		(startPos 133))
	(FAMIX.Class (id: 76)
		(name ''Appendable'')
		(container (ref: 25))
		(isInterface true)
		(isStub true)
		(modifiers ''public''))
	(FAMIX.Access (id: 77)
		(accessor (ref: 17))
		(variable (ref: 32))
		(sourceAnchor (ref: 30)))
	(FAMIX.Class (id: 78)
		(name ''CharSequence'')
		(container (ref: 25))
		(isInterface true)
		(isStub true)
		(modifiers ''public'')))'
]

{ #category : #'as yet unclassified' }
CRFBindingTest >> fastMethodMainString [
	"public static void main(String[] args) {
        new Hello();
    }"

	^ '	(
	(FAST.StatementBlock (id: 1))
	(FAST.ExpressionStatement (id: 2))
	(FAST.NamedEntity (id: 3)
		(name ''args''))
	(FAST.JavaNewExpression (id: 4)
		(name ''Hello''))
	(FAST.JavaMethodEntity (id: 5)
		(name ''main'')))'
]

{ #category : #'as yet unclassified' }
CRFBindingTest >> fastMethodReturnNumberString [
	"private int returnNumber(int i){
        return i;
    }"

	^ '	((FAST.JavaMethodEntity (id: 1)
		(name ''returnNumber''))
	(FAST.NamedEntity (id: 2)
		(name ''i''))
	(FAST.ReturnStatement (id: 3))
	(FAST.StatementBlock (id: 4)))'
]

{ #category : #'as yet unclassified' }
CRFBindingTest >> fastMethodTestString [
	" public int test () {
        hello = returnNumber(5);
        hello++;
        System.out.println(patate + hello);
        return hello;
    }"
	^ '(
	(FAST.JavaUnaryExpression (id: 1)
		(expression (ref: 2))
		(operator ''++''))
	(FAST.JavaClassProperty (id: 3)
		(fieldName ''out'')
		(type (ref: 4)))
	(FAST.ExpressionStatement (id: 5))
	(FAST.NamedEntity (id: 2)
		(name ''hello''))
	(FAST.NamedEntity (id: 6)
		(name ''hello''))
	(FAST.JavaMethodEntity (id: 7)
		(name ''test''))
	(FAST.NamedEntity (id: 8)
		(name ''hello''))
	(FAST.JavaIntegerLiteral (id: 9)
		(value ''5''))
	(FAST.StatementBlock (id: 10))
	(FAST.JavaAssignementExpression (id: 11)
		(expression (ref: 12))
		(variable (ref: 8)))
	(FAST.JavaMethodInvocation (id: 12)
		(name ''returnNumber''))
	(FAST.JavaMethodInvocation (id: 13)
		(name ''println'')
		(receiver (ref: 3)))
	(FAST.ExpressionStatement (id: 14))
	(FAST.JavaInfixOperation (id: 15)
		(operator ''+''))
	(FAST.NamedEntity (id: 16)
		(name ''patate''))
	(FAST.NamedEntity (id: 4)
		(name ''System''))
	(FAST.ReturnStatement (id: 17))
	(FAST.ExpressionStatement (id: 18)))'
]

{ #category : #accessing }
CRFBindingTest >> fastModel [
	^ fastModel
]

{ #category : #accessing }
CRFBindingTest >> fastModel: anObject [
	fastModel := anObject
]

{ #category : #running }
CRFBindingTest >> setUp [
	super setUp.
	famixModel := (MooseModel
		importFromMSEStream: (ReadStream on: self famixModelString)) name: #famixModel;
		yourself
]

{ #category : #running }
CRFBindingTest >> testCanLoadFamixAndFastModel [
	"This test will fail if the setup failed --> it will mean that the famix model cannot be load"

	
]
