function brewup
	brew -v update; brew -v upgrade; brew upgrade --cask; brew cleanup; brew doctor;
end
