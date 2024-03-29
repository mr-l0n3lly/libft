#include "libft.h"

int		ft_memcmp(const void *s1, const void *s2, size_t n)
{
	while(s1 && s2 && n > 0)
	{
		if(*(unsigned char*)s1 != *(unsigned char*)s2)
			return ((int)(*(unsigned char*)s1 - *(unsigned char*)s2));
		n--;
	}
	return (0);
}
