package com.skilldistillery.pokedex.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pokemon {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String type1;
	
	private String type2;
	
	private double height;
	
	private double weight;
	
	private String ability;
	
	@Column(name = "pokedex_entry")
	private String entry;
	
	@Column(name = "pokemon_image_url")
	private String image;
	
	@Column(name = "last_update")
	private LocalDate lastUpdate;
	
	
	public Pokemon() {}

	public Pokemon(int id, String name, String type1, String type2, double height, double weight, String ability,
			String entry, String image, LocalDate lastUpdate) {
		super();
		this.id = id;
		this.name = name;
		this.type1 = type1;
		this.type2 = type2;
		this.height = height;
		this.weight = weight;
		this.ability = ability;
		this.entry = entry;
		this.image = image;
		this.lastUpdate = lastUpdate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType1() {
		return type1;
	}

	public void setType1(String type1) {
		this.type1 = type1;
	}

	public String getType2() {
		return type2;
	}

	public void setType2(String type2) {
		this.type2 = type2;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public String getAbility() {
		return ability;
	}

	public void setAbility(String ability) {
		this.ability = ability;
	}

	public String getEntry() {
		return entry;
	}

	public void setEntry(String entry) {
		this.entry = entry;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public LocalDate getLastUpdate() {
		return lastUpdate;
	}

	public void setLastUpdate(LocalDate lastUpdate) {
		this.lastUpdate = lastUpdate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Pokemon ID: ").append(id).append(", Name: ").append(name).append(", Type: ").append(type1)
				.append(", Type: ").append(type2).append(", Height: ").append(height).append(", Weight: ").append(weight)
				.append(", Ability: ").append(ability).append(", Entry: ").append(entry).append(", Image: ").append(image)
				.append(", Last Update: ").append(lastUpdate).append("]");
		return builder.toString();
	}
	
	

}
