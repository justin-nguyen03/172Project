package com.example.proj_dealership;

import org.springframework.data.repository.CrudRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface VehicleRepository extends CrudRepository<Vehicle, Long>{
	Vehicle findByName(String name);
}
