enum Faction {
  nato('NATO', 'USA'),
  allegiance('Allegiance', 'Germany'),
  taskForce141('Task Force 141', 'United Kingdom'),
  spetsnaz('Spetsnaz', 'Russia'),
  jackals('Jackals', 'USA'),
  shadowCompany('Shadow Company', 'Unknown');

  final String displayName;
  final String origin;

  const Faction(this.displayName, this.origin);
}
