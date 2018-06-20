export default function() {
  this.route(
    'campaigns',
    { path: '/campaigns' },
  );
  this.route('collectives', { path: '/collectives' });
}
