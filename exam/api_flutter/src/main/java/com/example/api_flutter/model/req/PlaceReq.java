package com.example.api_flutter.model.req;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PlaceReq {

    private Long id;

    private String name;

    private Double rate;
}
