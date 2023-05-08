package org.zerock.wego.domain.common;

import lombok.Data;

@Data
public class BoardDTO {
	private String orderBy;
	private Integer sortNum = 0;
	
	private Integer page = 1;
	private Integer amount = 20;
	
} // end class
