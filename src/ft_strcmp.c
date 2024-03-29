#include "libft.h"

int     ft_strcmp(const char *s1, const char *s2)
{
    size_t i;

    i = 0;
    while(s1[i] != '\0' && s2[i] != '\0')
    {
        if (s1[i] != s2[i])
            return ((int)(s1 - s2));
        i++;
    }

    if(s1[i] == '\0' && s2[i] != '\0')
        return ((int)(0 - s2[i]));
    if(s1[i] != '\0' && s2[i] == '\0')
        return ((int)s1[i]);

    return (0);
}
