import React from 'react';
import './App.css';
import Input from "./Components/Input"


const App: React.FC = () => {
  return (
    <div className="App">
      <span className ="heading">TVSearcher</span>
      <Input />
    </div>
  );
}

export default App;
