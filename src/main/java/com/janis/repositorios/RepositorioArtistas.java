package com.janis.repositorios;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.janis.modelos.Artista;

@Repository
public interface RepositorioArtistas extends CrudRepository<Artista, Long> {

	List<Artista> findAll();
}
