package com.qc.bdd.steps;

import java.time.Duration;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import io.cucumber.java.en.*;

public class login {
	WebDriver driver; 
	WebElement email; 
	WebElement pass;  
	WebElement login;  
	WebElement logout;
	
	
@Given("To launch the browser {string}")
public void to_launch_the_browser(String browserName) {
	if (browserName.equals("chrome"))
	{    
	driver = new ChromeDriver();   
	   }else if(browserName.equals("edge")){
			driver = new EdgeDriver(); 
	   }
	
	else{ 
		driver = new FirefoxDriver();   
	}   
	driver.manage().window().maximize();
}


@Given("To enter the site url {string}")
public void to_enter_the_site_url(String siteUrl) {
    driver.get(siteUrl);
    driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(5));
}


@Given("To enter the uName {string}")
public void to_enter_the_u_name(String username) {
	
	email = driver.findElement(By.name("email"));
	email.clear();
	email.sendKeys(username);
}

@Given("To enter the uPass {string}")
public void to_enter_the_u_pass(String password) {
	pass = driver.findElement(By.name("password"));
	pass.clear();
    pass.sendKeys(password);
}

@When("To click on login button")
public void to_click_on_login_button() {
    login = driver.findElement(By.xpath("//div[@id='content']/div/div[2]/div/form/input"));
	login.click();
}

@Then("To validate the dashboard  title {string}")
public void to_validate_the_dashboard_title(String string) {
   driver.getTitle();
   
}

@Then("To logout from the dashboard page")
public void to_logout_from_the_dashboard_page() {
    logout = driver.findElement(By.xpath("//*[@id=\"column-right\"]/div/a[13]"));
	logout.click();
}

@Then("To validate the message {string} is displayed")
public void to_validate_the_message_is_displayed(String expMsg) {
	
	expMsg.contentEquals("Warning: No match for E-Mail Address and/or Password.");

};
@Then("To close the browser")
public void to_close_the_browser() {
   driver.close();
}
}
