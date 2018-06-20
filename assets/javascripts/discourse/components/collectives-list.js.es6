import CategoryList from 'discourse/models/category-list';

export default Ember.Component.extend({
  classNames: ['collectives'],

 didReceiveAttrs() {
    CategoryList.list(this.store).then(({ categories }) => {
      this.set('collectives', categories.filter(({ is_collective }) => is_collective));
    });
  },
});
