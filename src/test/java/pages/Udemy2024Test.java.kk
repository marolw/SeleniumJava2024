package pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import io.github.bonigarcia.wdm.WebDriverManager;


public class Udemy2024Test {
    
    private WebDriver driver;

    @BeforeMethod
    public void setUp() {
        // Configuramos el driver de Chrome
        WebDriverManager.chromedriver().setup();
        driver = new ChromeDriver();
    }

    @Test
    public void navegamosAFreerangeTesters() {
     // Navegamos a la página de FreeRangeTesters
        driver.get("https://www.freerangetesters.com");
    }

    @AfterMethod
    
    public void tearDown() {
        // Cerramos el navegador despues de la prueba
        if (driver != null){
            driver.quit();
        }
    
    }
}
