package com.tcs.springbootwebfluxdemo.repository;

import com.tcs.springbootwebfluxdemo.entity.Employee;

import reactor.core.publisher.Flux;

import org.springframework.data.mongodb.repository.Query;
import org.springframework.data.mongodb.repository.ReactiveMongoRepository;

public interface EmployeeRepository extends ReactiveMongoRepository<Employee, Integer>  {
	@Query("{ 'name': ?0 }")
    Flux<Employee> findByName(final String name);
}
