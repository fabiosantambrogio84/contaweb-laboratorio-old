package com.contaweb.laboratorio.model;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ricetta")
public class Ricetta {

	@Id
	private Integer idRicetta;
	
	private String nome;
	
	private String descrizione;
	
	private Timestamp dataCreazione;
	
	private Timestamp dataUltimoAggiornamento;
	
	private Double tempoPrepazione;
	
	private byte[] foto;
	
	private Double quantitaKg;

	public Integer getIdRicetta() {
		return idRicetta;
	}

	public void setIdRicetta(Integer idRicetta) {
		this.idRicetta = idRicetta;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public Timestamp getDataCreazione() {
		return dataCreazione;
	}

	public void setDataCreazione(Timestamp dataCreazione) {
		this.dataCreazione = dataCreazione;
	}

	public Timestamp getDataUltimoAggiornamento() {
		return dataUltimoAggiornamento;
	}

	public void setDataUltimoAggiornamento(Timestamp dataUltimoAggiornamento) {
		this.dataUltimoAggiornamento = dataUltimoAggiornamento;
	}

	public Double getTempoPrepazione() {
		return tempoPrepazione;
	}

	public void setTempoPrepazione(Double tempoPrepazione) {
		this.tempoPrepazione = tempoPrepazione;
	}

	public byte[] getFoto() {
		return foto;
	}

	public void setFoto(byte[] foto) {
		this.foto = foto;
	}

	public Double getQuantitaKg() {
		return quantitaKg;
	}

	public void setQuantitaKg(Double quantitaKg) {
		this.quantitaKg = quantitaKg;
	}
}
