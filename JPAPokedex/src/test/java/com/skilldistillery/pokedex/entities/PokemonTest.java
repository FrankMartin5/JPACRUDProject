package com.skilldistillery.pokedex.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class PokemonTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Pokemon pokemon;
	

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAPokedex");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		pokemon = em.find(Pokemon.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@Disabled
	@Test
	void test() {
		fail("Not yet implemented");
	}
	
	@DisplayName("Test pokemon mapping entity")
	@Test
	public void Test1() {
		assertEquals("Treecko", pokemon.getName());
	}

}
