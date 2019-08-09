import React, { useState, useEffect } from 'react';
import logo from './logo.svg';
import './App.css';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';

import NewsfeedList from './components/NewsfeedList';
import NewsfeedItem from './components/NewsfeedItem';
const App = () => {
  return (
    <div className='App'>
      <Router>
        <Route exact path='/' component={NewsfeedList} />
        <Route path='/:id' component={NewsfeedItem} />
      </Router>
    </div>
  );
};

export default App;
