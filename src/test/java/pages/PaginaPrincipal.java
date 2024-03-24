package pages;
 
public class PaginaPrincipal extends BasePage {

    private String sectionLink = "//a[normalize-space()='%s' and @href]";
 
    public PaginaPrincipal() {
        super(driver);
    }
 
    // Método para navegar a www.freerangetesters.com
    public void navigateToFreeRangeTesters() {
        navigateTo("https://www.freerangetesters.com");
    
    }

       // Metodo para maximizar la ventana del navegador
       public static void maximizeWindow() { driver.manage().window().maximize(); }

    public void clickOnSectionNavigationBar(String section) {
        maximizeWindow();
        // Reemplaza el marcador de posición en sectionLink con el nombre
        String xpathSection = String.format(sectionLink, section);
        clickElement(xpathSection);
    }
}

