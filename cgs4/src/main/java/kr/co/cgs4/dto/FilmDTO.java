package kr.co.cgs4.dto;

import java.sql.Date;

public class FilmDTO {
	
	private String film_ID;
	private String film_name;
	private int running_time;
	private int film_type;
	private Date release_date;
	private String director;
	private String genre;
	private String country;
	private int reserve_rate;
	private String actor;
	private int film_grade;
	private String film_story;
	private String poster;
	
	public String getFilm_ID() {
		return film_ID;
	}
	public void setFilm_ID(String film_ID) {
		this.film_ID = film_ID;
	}
	public String getFilm_name() {
		return film_name;
	}
	public void setFilm_name(String film_name) {
		this.film_name = film_name;
	}
	public int getRunning_time() {
		return running_time;
	}
	public void setRunning_time(int running_time) {
		this.running_time = running_time;
	}
	public int getFilm_type() {
		return film_type;
	}
	public void setFilm_type(int film_type) {
		this.film_type = film_type;
	}
	public Date getRelease_date() {
		return release_date;
	}
	public void setRelease_date(Date release_date) {
		this.release_date = release_date;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getReserve_rate() {
		return reserve_rate;
	}
	public void setReserve_rate(int reserve_rate) {
		this.reserve_rate = reserve_rate;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public int getFilm_grade() {
		return film_grade;
	}
	public void setFilm_grade(int film_grade) {
		this.film_grade = film_grade;
	}
	
	public String getFilm_story() {
		return film_story;
	}
	public void setFilm_story(String film_story) {
		this.film_story = film_story;
	}
	public String getPoster() {
		return poster;
	}
	public void setPoster(String poster) {
		this.poster = poster;
	}
	
}
