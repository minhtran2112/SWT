/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Control.Login;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author chitung
 */
public class RegexChecking {

    private static Pattern pattern;

	private Matcher matcher;

        //Format email : abc123@gmail.com
	private static final String EMAIL_REGEX ="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        //Include lowercase and uppercase letters and space
        private static final String NAME_REGEX = "^[a-zA-Z ]*$";
        //Including uppercase, lowercase, numbers, no whitespace and at least 8 technical characters
        private static final String PASS_REGEX = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}";
        //Including number 
        private static final String MOBILE_REGEX = "^[0-9]*$";
        
	public RegexChecking() {
//		pattern = Pattern.compile(EMAIL_REGEX);
	}

	public boolean validateEmail(String email) {
                pattern = Pattern.compile(EMAIL_REGEX);
		matcher = pattern.matcher(email);
		return matcher.matches();
	}
        public boolean validateName(String name){
            pattern = Pattern.compile(NAME_REGEX);
            matcher = pattern.matcher(name);
            return matcher.matches();
        }
                public boolean validatePass(String pass){
            pattern = Pattern.compile(PASS_REGEX);
            matcher = pattern.matcher(pass);
            return matcher.matches();
        }
                public boolean validateMobile(String number){
                    pattern = Pattern.compile(MOBILE_REGEX);
                    matcher = pattern.matcher(number);
                    return matcher.matches();
                }

    	//check  string  [a-zA-Z1-9]
    public boolean checkStringAndNumber(String input) {
        if (input == null || input.trim().length() == 0) {
            return false;
        }
        if (input.matches("^[a-zA-Z1-9\\s]+$")) {
            return true;
        } else {
            return false;
        }
    }

    //check  string  [a-zA-Z]
    public boolean checkString(String input) {
        if (input == null || input.trim().length() == 0) {
            return false;
        }
        if (input.matches("^[a-zA-Z\\s]+$")) {
            return true;
        } else {
            return false;
        }
    }
    //check dob  

    public boolean checkDateOfBirth(String input) {
        try {
            if (input == null || input.trim().length() == 0) {
                return false;
            }
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date dateNow = new Date();
            Date dob = sdf.parse(input);
            if (dateNow.compareTo(dob) <= 0) {
                return false;
            }
            return true;
        } catch (ParseException ex) {
            Logger.getLogger(RegexChecking.class.getName()).log(Level.SEVERE, null, ex);
        }
         return false;
    }
    //check salary  
    public boolean checkInteger(String input) {
        if (input == null || input.trim().length() == 0) {
            return false;
        }
        try {
            int salary = Integer.parseInt(input);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    //check number phone  
    public boolean checkPhone(String input) {
        if (input == null || input.trim().length() == 0) {
            return false;
        }
        if (input.matches("^(84|0[3|5|7|8|9])+([0-9]{8})$")) {
            return true;
        }
        return false;
    }

    //check mail 
    public boolean checkEmail(String input) {
        if (input == null || input.trim().length() == 0) {
            return false;
        }
        String regex = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        if (input.matches(regex)) {
            return true;
        }
        return false;
    }

    public boolean checkGender(String gender) {
        if (gender == null || gender.trim().length() == 0) {
            return false;
        }
        return true;
    }

  
   

}
