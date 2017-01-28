import Ember from 'ember';
import Elm from 'ember-with-elm/elm-modules';

export default Ember.Controller.extend({
  init(){
    this._super(...arguments);
    this.set('Elm', Elm);
  }
});
