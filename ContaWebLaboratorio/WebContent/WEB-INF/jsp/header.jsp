<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<spring:url value="/resources/img/star.jpg" var="starImg" />

<!-- Navigation -->
<nav class="navbar navbar-expand-lg fixed-top cwl-navbar" style="">
  <div class="container">
	<a class="navbar-brand" href="/ContaWebLaboratorio/home">
		<img src="${starImg}" width="30" height="30" class="d-inline-block align-top" alt="">
	    FABIO
	</a>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	  <span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive" style="font-size: 0.9rem !important;">
	  <ul class="navbar-nav ml-auto">
	  	<li class="nav-item dropdown  
			<c:if test="${param.active eq 'laboratorio'}">
				active	
			</c:if>">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Laboratorio
	        </a>
	        <div class="dropdown-menu cwl-navbarDropDownSubMenu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="/ContaWebLaboratorio/laboratorio/ricette">Ricette</a>
	          <a class="dropdown-item" href="/ContaWebLaboratorio/laboratorio/acquisto">Acquisto</a>
	          <a class="dropdown-item" href="/ContaWebLaboratorio/laboratorio/vendita">Vendita</a>
	          <a class="dropdown-item" href="/ContaWebLaboratorio/laboratorio/magazzino">Magazzino</a>
	          <a class="dropdown-item" href="/ContaWebLaboratorio/laboratorio/anagrafica">Anagrafica</a>
        	</div>
		</li>
		<li class="nav-item dropdown
			<c:if test="${param.active eq 'lotti'}">
				active	
			</c:if>">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Lotti
	        </a>
	        <div class="dropdown-menu cwl-navbarDropDownSubMenu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="/ContaWebLaboratorio/lotti/ricerca">Ricerca lotti</a>
	        </div>
	      </li>
		
	  </ul>
	</div>
  </div>
</nav>