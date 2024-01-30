package com.example.api_flutter.service;

import com.example.api_flutter.model.dto.PlaceDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PlaceService {
    List<PlaceDto> getUser();
}
