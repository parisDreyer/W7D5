// frontend/bench_bnb.jsx

import React from 'react';
import ReactDOM from 'react-dom';
import * as APIUtils from './util/session_api_util';

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root');

  window.APIUtils = APIUtils;
  ReactDOM.render(<h1 class="aw-yeah">Welcome to BenchBnB</h1>, root);
});
