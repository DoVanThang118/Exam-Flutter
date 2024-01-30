package com.example.api_flutter.model.mapper;

public interface MapperEntity<D,E> {
    D mapEntityToDTO(E entity);
    E mapDTOToEntity(D dto);
}
