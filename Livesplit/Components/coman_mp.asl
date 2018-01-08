state("coman_mp")
{
	int IGT : 0x002F811C, 0x468;
	int levelCleared : 0x2DBF04;

}

start
{
	if (current.IGT>1 && old.IGT == 1)
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