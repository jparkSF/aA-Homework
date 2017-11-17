import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';
import fetchSearchGiphys from './util/api_util';
import {receiveSearchGiphys} from './actions/giphy_actions';




document.addEventListener('DOMContentLoaded', () => {
    // console.log(fetchSearchGiphys);
    window.store = configureStore();
    window.fetchSearchGiphys = fetchSearchGiphys;
    window.receiveSearchGiphys = receiveSearchGiphys;
    const root = document.getElementById('root');
	ReactDOM.render(<div>hello world!</div>, root);

});
