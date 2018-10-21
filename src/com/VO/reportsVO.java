package com.VO;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;


	
	@Entity
	@Table(name="reports")
	public class reportsVO {
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int id;
		
		@Column(name="report")
		@Lob
		private Blob report;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public Blob getReport() {
			return report;
		}

		public void setReport(Blob report) {
			this.report = report;
		}

		
		
		
}
	

