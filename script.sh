#!/bin/bash

EX_NUMBER=$1

FILENAME1=$2
FILENAME2=$3
FILENAME3=$4
FILENAME4=$5
FILENAME5=$6

FILENAME1+=".hpp"

mkdir $EX_NUMBER
cd $EX_NUMBER
mkdir includes

############################################

#CREATION DES .hpp DANS LE DOSSIER INCLUDES#

############################################

cd includes

touch $FILENAME1
FILENAME1_COPY=$2
FILENAME1_DEFINE=$(echo $2 | tr [:lower:] [:upper:])

echo "#ifndef ${FILENAME1_DEFINE}_HPP
# define ${FILENAME1_DEFINE}_HPP

#include <iostream>
#include <string>

class $FILENAME1_COPY
{
	public:

	$FILENAME1_COPY();
	$FILENAME1_COPY(const $FILENAME1_COPY &other);
	$FILENAME1_COPY &operator=(const $FILENAME1_COPY &other);
	~$FILENAME1_COPY();

	private:

	
};

#endif" > $FILENAME1

if [ -n "$FILENAME2" ]; then
	FILENAME2+=".hpp"
	touch $FILENAME2
	FILENAME2_COPY=$3
	FILENAME2_DEFINE=$(echo $3 | tr [:lower:] [:upper:])

	echo "#ifndef ${FILENAME2_DEFINE}_HPP
# define ${FILENAME2_DEFINE}_HPP

#include <iostream>
#include <string>

class $FILENAME2_COPY
{
	public:

	$FILENAME2_COPY();
	$FILENAME2_COPY(const $FILENAME2_COPY &other);
	$FILENAME2_COPY &operator=(const $FILENAME2_COPY &other);
	~$FILENAME2_COPY();

	private:


};

#endif" > $FILENAME2
fi

if [ -n "$FILENAME3" ]; then
	FILENAME3+=".hpp"
	touch $FILENAME3
	FILENAME3_COPY=$4
	FILENAME3_DEFINE=$(echo $4 | tr [:lower:] [:upper:])

	echo "#ifndef ${FILENAME3_DEFINE}_HPP
# define ${FILENAME3_DEFINE}_HPP

#include <iostream>
#include <string>

class $FILENAME3_COPY
{
	public:

	$FILENAME3_COPY();
	$FILENAME3_COPY(const $FILENAME3_COPY &other);
	$FILENAME3_COPY &operator=(const $FILENAME3_COPY &other);
	~$FILENAME3_COPY();

	private:


};

#endif" > $FILENAME3
fi

if [ -n "$FILENAME4" ]; then
	FILENAME4+=".hpp"
	touch $FILENAME4
	FILENAME4_COPY=$5
	FILENAME4_DEFINE=$(echo $5 | tr [:lower:] [:upper:])

	echo "#ifndef ${FILENAME4_DEFINE}_HPP
# define ${FILENAME4_DEFINE}_HPP

#include <iostream>
#include <string>

class $FILENAME4_COPY
{
	public:

	$FILENAME4_COPY();
	$FILENAME4_COPY(const $FILENAME4_COPY &other);
	$FILENAME4_COPY &operator=(const $FILENAME4_COPY &other);
	~$FILENAME4_COPY();

	private:


};

#endif" > $FILENAME4
fi

if [ -n "$FILENAME5" ]; then
	FILENAME5+=".hpp"
	touch $FILENAME5
	FILENAME5_COPY=$6
	FILENAME5_DEFINE=$(echo $6 | tr [:lower:] [:upper:])

	echo "#ifndef ${FILENAME5_DEFINE}_HPP
# define ${FILENAME5_DEFINE}_HPP

#include <iostream>
#include <string>

class $FILENAME5_COPY
{
	public:

	$FILENAME5_COPY();
	$FILENAME5_COPY(const $FILENAME5_COPY &other);
	$FILENAME5_COPY &operator=(const $FILENAME5_COPY &other);
	~$FILENAME5_COPY();

	private:


};

#endif" > $FILENAME5
fi

cd ..
mkdir srcs

########################################

#CREATION DES .cpp DANS LE DOSSIER SRCS#

########################################

cd srcs

touch main.cpp

echo "#include \"../includes/METTEZ LE NOM BON DU .HPP A INCLUDE ICI\"

int main(int ac, char **av)
{

	return (0);	
}" > main.cpp

CLASS1=$FILENAME1_COPY
FILENAME1_COPY+=".cpp"
touch $FILENAME1_COPY

echo "#include \"../includes/${FILENAME1}\"

${CLASS1}::${CLASS1}()
{
	std::cout << \"Default constructor called for ${CLASS1}\" << std::endl;
}

${CLASS1}::${CLASS1}(const ${CLASS1} &other)
{
	std::cout << \"Copy constructor called for ${CLASS1}\" << std::endl;
	*this = other;
}

${CLASS1} &${CLASS1}::operator=(const ${CLASS1} &other)
{
	std::cout << \"Assignation constructor called for ${CLASS1}\" << std::endl;
	return (*this);
}

${CLASS1}::~${CLASS1}()
{
	std::cout << \"Destructor of ${CLASS1} called\" << std::endl;
}
" > $FILENAME1_COPY

if [ -n "$FILENAME2" ]; then
	CLASS2=$FILENAME2_COPY
	FILENAME2_COPY+=".cpp"
	touch $FILENAME2_COPY

	echo "#include \"../includes/${FILENAME2}\"

${CLASS2}::${CLASS2}()
{
	std::cout << \"Default constructor called for ${CLASS2}\" << std::endl;
}

${CLASS2}::${CLASS2}(const ${CLASS2} &other)
{
	std::cout << \"Copy constructor called for ${CLASS2}\" << std::endl;
	*this = other;
}

${CLASS2} &${CLASS2}::operator=(const ${CLASS2} &other)
{
	std::cout << \"Assignation constructor called for ${CLASS2}\" << std::endl;
	return (*this);
}

${CLASS2}::~${CLASS2}()
{
	std::cout << \"Destructor of ${CLASS2} called\" << std::endl;
}
" > $FILENAME2_COPY
fi

if [ -n "$FILENAME3" ]; then
	CLASS3=$FILENAME3_COPY
	FILENAME3_COPY+=".cpp"
	touch $FILENAME3_COPY

	echo "#include \"../includes/${FILENAME3}\"

${CLASS3}::${CLASS3}()
{
	std::cout << \"Default constructor called for ${CLASS3}\" << std::endl;
}

${CLASS3}::${CLASS3}(const ${CLASS3} &other)
{
	std::cout << \"Copy constructor called for ${CLASS3}\" << std::endl;
	*this = other;
}

${CLASS3} &${CLASS3}::operator=(const ${CLASS3} &other)
{
	std::cout << \"Assignation constructor called for ${CLASS3}\" << std::endl;
	return (*this);
}

${CLASS3}::~${CLASS3}()
{
	std::cout << \"Destructor of ${CLASS3} called\" << std::endl;
}
" > $FILENAME3_COPY
fi

if [ -n "$FILENAME4" ]; then
	CLASS4=$FILENAME4_COPY
	FILENAME4_COPY+=".cpp"
	touch $FILENAME4_COPY

	echo "#include \"../includes/${FILENAME4}\"

${CLASS4}::${CLASS4}()
{
	std::cout << \"Default constructor called for ${CLASS4}\" << std::endl;
}

${CLASS4}::${CLASS4}(const ${CLASS4} &other)
{
	std::cout << \"Copy constructor called for ${CLASS4}\" << std::endl;
	*this = other;
}

${CLASS4} &${CLASS4}::operator=(const ${CLASS4} &other)
{
	std::cout << \"Assignation constructor called for ${CLASS4}\" << std::endl;
	return (*this);
}

${CLASS4}::~${CLASS4}()
{
	std::cout << \"Destructor of ${CLASS4} called\" << std::endl;
}
" > $FILENAME4_COPY
fi

if [ -n "$FILENAME5" ]; then
	CLASS5=$FILENAME5_COPY
	FILENAME5_COPY+=".cpp"
	touch $FILENAME5_COPY

	echo "#include \"../includes/${FILENAME5}\"

${CLASS5}::${CLASS5}()
{
	std::cout << \"Default constructor called for ${CLASS5}\" << std::endl;
}

${CLASS5}::${CLASS5}(const ${CLASS5} &other)
{
	std::cout << \"Copy constructor called for ${CLASS5}\" << std::endl;
	*this = other;
}

${CLASS5} &${CLASS5}::operator=(const ${CLASS5} &other)
{
	std::cout << \"Assignation constructor called for ${CLASS5}\" << std::endl;
	return (*this);
}

${CLASS5}::~${CLASS5}()
{
	std::cout << \"Destructor of ${CLASS5} called\" << std::endl;
}
" > $FILENAME5_COPY
fi

cd ..

touch Makefile

echo -n "NAME        = Program

SRCS        = srcs/main.cpp srcs/${FILENAME1_COPY}" > Makefile

if [ -n "$FILENAME2" ]; then
	echo -n " srcs/${FILENAME2_COPY}" >> Makefile
fi

if [ -n "$FILENAME3" ]; then
	echo -n " srcs/${FILENAME3_COPY}" >> Makefile
fi

if [ -n "$FILENAME4" ]; then
	echo -n " srcs/${FILENAME4_COPY}" >> Makefile
fi

if [ -n "$FILENAME5" ]; then
	echo -n " srcs/${FILENAME5_COPY}" >> Makefile
fi

echo "

OBJS        = \${SRCS:.cpp=.o}

RM          = rm -f

CFLAGS      = -Wall -Wextra -Werror -std=c++98

COMPILER    = c++

\${NAME}: \${OBJS}
		\${COMPILER} \${FLAGS} \${OBJS} -o \${NAME}

all :   \${NAME}

clean:
		\${RM} \${OBJS}

fclean: clean
		\${RM} \${NAME}

re:        fclean all

.PHONY: all clean fclean re
" >> Makefile
