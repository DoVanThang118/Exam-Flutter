package com.example.api_flutter.model.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PlaceDto {

    private Long id;

    private String name;

    private Double rate;

    private String image;
}
