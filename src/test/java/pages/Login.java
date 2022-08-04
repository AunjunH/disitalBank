package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class Login {


        @FindBy(id="username")
        public WebElement username;

        @FindBy(id="password")
        public WebElement password;

        @FindBy(id="submit")
        public WebElement signInButton;

        @FindBy(xpath="//a[contains(text(), 'Sign Up Here')]")
        public WebElement signUpLink;

    }

