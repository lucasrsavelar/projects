import React from 'react'
import { useState, useEffect } from 'react';
import "./styles.css";
import Results from "./Results";

function Input() {

  const [userSubmit, setSubmit] = useState(false);
  const [data, setData] = useState(null);
  
  const handleSubmit = (event:any) => {
    event.preventDefault();
    setSubmit(true);
  };

  useEffect(() => {
    fetch(`https://api.tvmaze.com/search/shows?q=breaking`)
    .then((response) => {return response.json();})
    .then((json) => {setData(json);});
  },[userSubmit]);

  return (
    <div>
      <form className="inputDiv" onSubmit={handleSubmit}>
        <input type="input" placeholder="Digite um filme ou série" className="inputBox" />
        <button className="inputButton"> Buscar </button>
      </form>
      {userSubmit && (
        <Results data={data} />
      )}
    </div>
  );
};

export default Input;