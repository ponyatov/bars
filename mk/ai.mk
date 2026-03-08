.PHONY: ai tmp/$(APP).ai.md
ai: tmp/$(APP).ai.md
tmp/$(APP).ai.md: doc
	cat doc/ai.md README.md doc/bib.md doc/$(APP)/bib.md \
		  doc/$(APP)/*.md \
	> $@ ; touch $@
	echo '# .cargo/config.toml' >> $@
	cat .cargo/config.toml >> $@
	echo '# .cargo/i386-pc-none.json' >> $@
	echo .cargo/i386-pc-none.json
	echo '# Cargo.toml' >> $@
	echo Cargo.toml
