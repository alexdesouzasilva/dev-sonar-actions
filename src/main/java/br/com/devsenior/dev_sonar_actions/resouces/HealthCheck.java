package br.com.devsenior.dev_sonar_actions.resouces;

import java.time.LocalDateTime;
import java.time.ZoneId;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping
public class HealthCheck {

    @GetMapping("/health")
    public ResponseEntity<String> health() {
        String health = "Status Ok - " + LocalDateTime.now(ZoneId.systemDefault());
        return ResponseEntity.ok(health);
    }
    
    
}
