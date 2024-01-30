package com.example.api_flutter.model.mapper;

import com.example.api_flutter.entity.Place;
import com.example.api_flutter.model.dto.PlaceDto;
import com.example.api_flutter.model.req.PlaceReq;
import javax.annotation.processing.Generated;

@Generated(
    value = "org.mapstruct.ap.MappingProcessor",
    date = "2024-01-30T19:46:33+0700",
    comments = "version: 1.5.5.Final, compiler: javac, environment: Java 20.0.2 (Oracle Corporation)"
)
public class PlaceMapperImpl implements PlaceMapper {

    @Override
    public PlaceDto mapEntityToDTO(Place entity) {
        if ( entity == null ) {
            return null;
        }

        PlaceDto placeDto = new PlaceDto();

        placeDto.setId( entity.getId() );
        placeDto.setName( entity.getName() );
        placeDto.setRate( entity.getRate() );

        return placeDto;
    }

    @Override
    public Place mapDTOToEntity(PlaceDto dto) {
        if ( dto == null ) {
            return null;
        }

        Place place = new Place();

        place.setId( dto.getId() );
        place.setName( dto.getName() );
        place.setRate( dto.getRate() );

        return place;
    }

    @Override
    public Place mapReqToEntity(PlaceReq req) {
        if ( req == null ) {
            return null;
        }

        Place place = new Place();

        place.setId( req.getId() );
        place.setName( req.getName() );
        place.setRate( req.getRate() );

        return place;
    }
}
