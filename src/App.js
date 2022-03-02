import * as React from "react";
// import { ethers } from "ethers";
import './App.css';
import { Button } from "./components/Button";

export default function App() {

  const wave = () => {
    
  }
  
  return (
    <div className="mainContainer">
      <div className="dataContainer">
        <div className="header">
           <span role="img">👋</span> Hey there!
        </div>

        <div className="bio">
        I am Matheus and I worked on self-driving cars so that's pretty cool right? Connect your Ethereum wallet and wave at me!
        </div>

        <Button onClick={wave}>
          Wave at Me
        </Button>
      </div>
    </div>
  );
}
