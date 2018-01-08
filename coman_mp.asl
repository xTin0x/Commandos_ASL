state("coman_mp")
{
	int frames : 0x002F811C, 0x468;
	int levelCleared : 0x2DBF04;

}

start
{
	if (current.frames>1 && old.frames == 1)
	{
		return true;
	}
}

split
{
	if (old.levelCleared == 0 && current.levelCleared == 1)
	{
		return true;
	}
}

reset
{
	return current.frames == 0;
}

isLoading
{
	return true;
}

gameTime
{
	return TimeSpan.FromMilliseconds((current.frames - 1)*1000/20.055);
}