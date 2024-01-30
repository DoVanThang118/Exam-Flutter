package com.example.api_flutter.service.impl;

import com.example.api_flutter.entity.Place;
import com.example.api_flutter.model.dto.PlaceDto;
import com.example.api_flutter.model.mapper.PlaceMapper;
import com.example.api_flutter.repository.PlaceRepository;
import com.example.api_flutter.service.PlaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PlaceServiceImpl implements PlaceService {

    @Autowired
    public PlaceRepository placeRepository;

    @Override
    public List<PlaceDto> getUser() {
        List<Place> places = placeRepository.findAll();
        List<PlaceDto> result = new ArrayList<>();
        for (Place place : places) {
            result.add(PlaceMapper.INSTANCE.mapEntityToDTO(place));
        }
        return result;
    }
}
