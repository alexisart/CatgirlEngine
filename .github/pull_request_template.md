<!--
    A general pull request template to help ensure code quality and legibility
-->

# What does this implement/fix?

## Types of Changes

- [ ] Bug Fix
- [ ] New Feature
- [ ] Refactor
- [ ] Other

## Related Issue

Fixes...

## Test Environments

This feature/bug fix was tested on...

- [ ] Linux
- [ ] Windows
- [ ] Mac OSX
- [ ] Android
- [ ] iOS
- [ ] Browser Web Assembly
- [ ] Other Web Assembly (Please specify)
- [ ] Other

## General Submission Checklist

- [ ] Have you checked for other [pull requests][pr-tab] for the same or similar changes?
- [ ] Have you previously signed the Contributor(s) License Agreement?
- [ ] Does your pull request pass the dependency license checker, `cargo deny --all-features check licenses`?
- [ ] Have you ensured relevant files are handled by git lfs?
- [ ] Does your pull request pass cargo checks, `cargo check --workspace --all-targets --all-features --bins --tests --benches --examples`?
- [ ] Have you written relevant unit tests and they are [organized correctly][unit-test-organization]?
- [ ] Does your pull request pass unit tests, `cargo test --workspace --all-targets --all-features --bins --tests --benches --examples`?
- [ ] Does your pull request pass the clippy test, `cargo clippy --workspace --all-targets --all-features`?
- [ ] Have you ran the cargo formatter, `cargo fmt --all`
- [ ] Have you ran the git pre-commit hooks?

## Documentation Submission Checklist

- [ ] If a documentation update, have you tested against, `cargo doc --no-deps --workspace --all-features --document-private-items`?

## Banned/Restricted Features

- Generative AI (for example, Large Language Models) are entirely banned due to both copyright and moral reasons. This includes both code and assets.
- NFTs (or Non-Fungible Tokens) are entirely banned due to the nature of how NFTs are used. Nobody buys NFTs because of the NFT itself. Instead people buy them in hopes of selling for a profit. A market where there's only sellers is unsustainable and somebody will be out of money with a NFT that doesn't have any worth outside of the potential to sell to someone else.
- Cryptocurrencies are almost entirely banned and may be entirely banned in the future. New coins are often created so people will buy into it for the hype of the original bitcoin and when enough people buy into it, often, the original investors will pull out and completely devalue the currency. This is known as a rugpull. Given the lack of regulations to protect those who were scammed by rugpulls, we do not want new coins to be minted for this engine or associated with this engine. Whether or not we allow existing coins like bitcoin to be used as a form of purchasing games made with the engine is restricted.
- Microtransactions are not allowed for in game items in this engine. Due to the nature of what this engine is designed for, even if someone implemented microtransactions within the engine, it'd be unenforceable to prevent people from copying and giving items bought with microtransactions to other players.
- Regex usage is restricted and should be evaluated more closely. This is to reduce the potential misuse of regex by using it as a parser or sanitizer which can introduce security vulnerabilities. If possible, other methods of parsing and sanitization should be considered both to maintain code legibility, and to make it easier to write unit tests.

## Notes

- Reduce reliance on new dependencies
- Avoid linking in external libraries where possible (prefer static code)
- Try to focus on code legibility and future maintainability. This is subjective, but the goal is to reduce technical debt.

[pr-tab]: https://github.com/foxgirl-labs/catgirl-engine/pulls
[unit-test-organization]: https://doc.rust-lang.org/book/ch11-03-test-organization.html
