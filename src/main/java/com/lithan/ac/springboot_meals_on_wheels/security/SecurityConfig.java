package com.lithan.ac.springboot_meals_on_wheels.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;


@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    	System.out.println("At Authen configure");
        auth.userDetailsService(userDetailsService()).passwordEncoder(passwordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
 
    	System.out.println("At Security configure");
        http
        		
                .formLogin()
                    .loginPage("/MerryMeal")
                    .loginProcessingUrl("/login")
                    .failureUrl("/login_error")
                    .permitAll()
                    .defaultSuccessUrl("/Merry_Meal", true)
                .and()
                .csrf()
                .and()
                .authorizeRequests()
                    .antMatchers("/").permitAll()
                    .antMatchers("/css/**").permitAll()
                    .antMatchers("/images/**").permitAll()
                    .antMatchers("/js/**").permitAll()
                    .antMatchers(HttpMethod.GET, "/favicon.*").permitAll()
                    .antMatchers(HttpMethod.GET, "/login").permitAll()
                    .antMatchers(HttpMethod.GET,"/register").hasAnyRole("Administrator","Member","Partner","Rider","Donor")
                    .antMatchers(HttpMethod.GET, "/Kit_chen").hasAnyRole("Administrator","Partner")
                    .antMatchers(HttpMethod.GET,"/Kitchen_view").hasAnyRole("Partner","Administrator")
                    
                    .antMatchers(HttpMethod.GET,"/Kitchen").hasAnyRole("Partner","Administrator")
                    .antMatchers(HttpMethod.GET,"/Order").hasAnyRole("Member","Partner","Donor","Administrator","Rider")                    
                    .antMatchers(HttpMethod.POST, "/Ordered_Food").hasAnyRole("Member","Rider","Donor","Administrator","Partner")
                    .antMatchers(HttpMethod.POST, "/Member").hasRole("Member")
                    .antMatchers(HttpMethod.POST, "/Rider").hasRole("Rider")
                    .antMatchers(HttpMethod.POST, "/Donors").hasAnyRole("Member","Rider","Donor","Administrator","Partner")
                    .antMatchers(HttpMethod.POST, "/home").hasAnyRole("Member","Rider","Donor","Administrator","Partner")
                    .antMatchers(HttpMethod.PUT, "/Merry_Meal").hasAnyRole("Member","Rider","Donor","Administrator","Partner")
                    .antMatchers(HttpMethod.PUT, "/Donors_detail").hasAnyRole("Administrator")
                    .antMatchers(HttpMethod.PUT, "/Order_detail").hasAnyRole("Administrator")
                    .antMatchers(HttpMethod.PUT, "/Rider_detail").hasAnyRole("Administrator")
                    .antMatchers(HttpMethod.GET,"/users").hasRole("Administrator")
                    .antMatchers(HttpMethod.GET,"/edit").hasAnyRole("Administrator","Partner")
                    .antMatchers(HttpMethod.GET, "/delete").hasAnyRole("Administrator","Partner")
                .and()
                .logout()
                    .logoutSuccessUrl("/MerryMeal")
                    .invalidateHttpSession(true);
                  
    }
}
