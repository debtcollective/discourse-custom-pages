import PreloadStore from 'preload-store';

export default Ember.Component.extend({
  classNames: ['campaigns'],
  sortProperties: ['id'],

  didReceiveAttrs() {
    const campaigns = PreloadStore.get('tagGroup').tag_group;
    campaigns.tags = campaigns.tag_names.map(name => { return { id: name }})
    this.set('campaigns', campaigns);
  }
});
