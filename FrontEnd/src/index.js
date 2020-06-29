import React from 'react';
import ReactDOM from 'react-dom';
import {Switch,HashRouter,Route} from "react-router-dom";
import App from './App';
import ScrollToTop from './Container/scrolltotop'
import axios from 'axios';
class MainContainer extends React.Component
{
	componentDidMount()
	{
		if(localStorage.getItem('thinkbridge_version')==null)
		{
		  localStorage.clear();
		  localStorage.setItem('thinkbridge_version','1.0');

		}
		else if(localStorage.getItem('thinkbridge_version')!='1.0')
		{
		  localStorage.clear();
		  localStorage.setItem('thinkbridge_version','1.0')
		}
	    this.setStorage();
   }
  setStorage=()=>{
  	localStorage.setItem('url','/');
    if(localStorage.getItem('user_id')==null )
    {
      localStorage.setItem('user_id',0)
    }
   }
	render()
	{
		return(
	    <HashRouter >
	      <ScrollToTop />
	      <Switch>
		      <Route path="/" component={App}/>
	      </Switch>
	    </HashRouter>)
    }
 }
ReactDOM.render( <MainContainer />,document.getElementById('root'));