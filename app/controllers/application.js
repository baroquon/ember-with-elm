import Ember from 'ember';
import Elm from 'ember-with-elm/elm-modules';

let item1 = Ember.Object.create({
  name: 'Picard',
  rank: 'Captain'
});
let item2 = Ember.Object.create({
  name: 'Riker',
  rank: 'Commander'
});

export default Ember.Controller.extend({
  init(){
    this._super(...arguments);
    this.set('Elm', Elm);
  },
  listOfThings: [item1, item2]
});
