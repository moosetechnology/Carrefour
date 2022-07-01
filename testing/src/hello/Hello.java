package hello;

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
        c.setWidget(new Button("I'am a Button") {

            public void onClick(final ClickEvent event) {
                System.out.println(event + " I'm calling " + hello);
                Button innertButton = new Button();
            }
        });

        c.setWidget(new Button("I'am another Button") {

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
        c.setWidget(new Button("I'am a Button") {
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

}