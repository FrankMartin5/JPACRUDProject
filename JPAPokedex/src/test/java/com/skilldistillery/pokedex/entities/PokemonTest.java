package com.skilldistillery.pokedex.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
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
		pokemon = em.find(Pokemon.class, 6);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}

	@DisplayName("Test pokemon entity mapping")
	@Test
	public void Test1() {
		assertNotNull(pokemon);
		assertEquals("Blaziken", pokemon.getName());
		assertEquals("Fire", pokemon.getType1());
		assertEquals("Fighting", pokemon.getType2());
		assertEquals(1.9, pokemon.getHeight());
		assertEquals(52, pokemon.getWeight());
		assertEquals("Blaze", pokemon.getAbility());
		assertEquals("Flames spout from its wrists, enveloping its knuckles. Its punches scorch its foes.", pokemon.getEntry());
		assertEquals("https://cdn.bulbagarden.net/upload/thumb/9/90/257Blaziken.png/240px-257Blaziken.png", pokemon.getImage());
		assertEquals("2019-01-17", pokemon.getLastUpdate().toString());
	}

}
