import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  let store = configureStore(preloadedState);

  const root = document.getElementById('content');
  // store = applyMiddlewares(store, addLoggingToDispatch)
  
  ReactDOM.render(<Root store={store} />, root);
});
// const addLoggingToDispatch = (store) => (next) =>(action)=>{
//   console.log(store.getState());
//   console.log(action);
//   next(action);
//   console.log(store.getState())
// }

// const applyMiddlewares = (store, ...middlewares)=>{
//     let dispatch = store.dispatch;
//     middlewares.forEach(mid => {
//       dispatch = mid(store)(dispatch)
//     })
//     return Object.assign({}, store, {dispatch})
// }