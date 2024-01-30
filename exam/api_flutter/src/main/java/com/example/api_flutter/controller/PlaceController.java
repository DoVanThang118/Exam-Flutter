package com.example.api_flutter.controller;

import com.example.api_flutter.model.dto.PlaceDto;
import com.example.api_flutter.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@RestController
@RequestMapping("/api/v1/places")
public class PlaceController {

    @Autowired
    public PlaceService placeService;

    @GetMapping("")
    public ResponseEntity<?> getUser() {
        List<PlaceDto> places = placeService.getUser();
        return ResponseEntity.ok(places);
    }
}
