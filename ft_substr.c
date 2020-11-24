/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: larosale <larosale@42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/04 13:01:46 by larosale          #+#    #+#             */
/*   Updated: 2020/05/04 20:22:50 by larosale         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"

/*
** Allocates memory and returns a substring of string "s". The substring
** begins at "start" and is of maximum length "len".
*/

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char	*substr;
	size_t	s_len;

	if (s == NULL || !(substr = malloc(len + 1)))
		return (NULL);
	if (start < ft_strlen(s) && len > 0)
	{
		s += start;
		s_len = 0;
		while (*s && s_len < len)
		{
			*(substr + s_len) = *(s + s_len);
			s_len++;
		}
		*(substr + s_len) = '\0';
	}
	else
		*substr = '\0';
	return (substr);
}
