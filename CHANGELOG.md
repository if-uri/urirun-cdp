# Changelog

All notable changes to `urirun-cdp` are documented here.
The format follows [Keep a Changelog](https://keepachangelog.com/).

## [0.1.0] - 2026-06-26

### Added
- Initial release. The CDP browser-surface primitive (`reachable`, `navigate`, `evaluate`,
  nav-history, scroll/forms) extracted from `urirun.connectors.surfaces.cdp` as a standalone,
  dependency-free package. Pure stdlib (raw WebSocket to a Chrome DevTools endpoint).
- Back-compat: the old import path `urirun.connectors.surfaces.cdp` keeps working via a
  `sys.modules` re-export shim in the urirun package.
