# homebrew-mcpreflight

Homebrew tap for [`mcpreflight`](https://github.com/xka0085-byte/mcpreflight) — point it at any MCP or x402 endpoint and get a PASS / FAIL / UNKNOWN verdict in one command. Read-only: no API key, no wallet, no tool calls.

## Install

```bash
brew install xka0085-byte/mcpreflight/mcpreflight
```

That single line taps `xka0085-byte/mcpreflight` and installs the formula. To tap and install separately:

```bash
brew tap xka0085-byte/mcpreflight
brew install mcpreflight
```

## Use

```bash
mcpreflight schema https://your-mcp-server.example/mcp   # initialize handshake + tools/list + schema check
mcpreflight-mcp                                          # same checks as a stdio MCP server
mcpreflight --version
```

Exit codes: `0` PASS, `1` FAIL, `2` UNKNOWN, so the same command gates CI as well as a manual check.

## Alternative installs

| Channel | Command |
|---|---|
| npm | `npx -y @eidonze/mcpreflight schema <url>` |
| GitHub Action | `uses: xka0085-byte/mcpreflight@v1` |
| Browser | [check an endpoint without installing](https://xka0085-byte.github.io/mcpreflight/check-your-mcp-endpoint.html) |

## Notes

- The formula installs the published tarball from the npm registry (version pinned, `sha256` verified) and depends on `node`.
- Formula lives in [`Formula/mcpreflight.rb`](Formula/mcpreflight.rb). Bump `url` + `sha256` when a new version ships.

## Uninstall

```bash
brew uninstall mcpreflight
brew untap xka0085-byte/mcpreflight
```
