package com.example.api_flutter.model.mapper;

import com.example.api_flutter.entity.Place;
import com.example.api_flutter.model.dto.PlaceDto;
import com.example.api_flutter.model.req.PlaceReq;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
@Mapper
public interface PlaceMapper extends MapperEntity<PlaceDto, Place> {

    PlaceMapper INSTANCE = Mappers.getMapper(PlaceMapper.class);

    Place mapReqToEntity(PlaceReq req);
}
