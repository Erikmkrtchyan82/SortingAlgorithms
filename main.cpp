#include <iostream>
#include <iterator>
#include <vector>
#include <algorithm>
#include <ctime>

using namespace std;


void print( vector< int > &vec ) {
    for_each( vec.begin(), vec.end(), []( int &x ) { cout << x << " "; } );
    cout << endl;
}

namespace shell {

    void shell_sort( vector< int > &arr ) {
        int n = arr.size();

        for ( int gap = n / 2; gap > 0; gap /= 2 ) {
            for ( int i = gap; i < n; ++i ) {
                int temp = arr[ i ];

                int j;
                for ( j = i; j >= gap && arr[ j - gap ] > temp; j -= gap )
                    arr[ j ] = arr[ j - gap ];

                arr[ j ] = temp;
            }
        }
    }

}

namespace quick {

    void quick_sort( vector< int > &arr, int low, int high ) {

        if ( low < high ) {
            int pivot = arr[ high ];
            int i = ( low - 1 );

            for ( int j = low; j <= high - 1; ++j ) {
                if ( arr[ j ] < pivot ) {
                    ++i;
                    swap( arr[ i ], arr[ j ] );
                }
            }
            ++i;
            swap( arr[ i ], arr[ high ] );

            quick_sort( arr, low, i - 1 );
            quick_sort( arr, i + 1, high );
        }
    }
}

namespace insertion {
    void insertion_sort( vector< int > &arr ) {
        int key;

        for ( int i = 1; i < arr.size(); ++i ) {
            key = arr[ i ];
            int j = i - 1;
            while ( j >= 0 && key < arr[ j ] ) {
                arr[ j + 1 ] = arr[ j ];
                --j;
            }
            arr[ j + 1 ] = key;
        }
    }
}

namespace selection {
    void selection_sort( vector< int > &arr ) {
        int min_idx;

        for ( int i = 0; i < arr.size() - 1; i++ ) {
            min_idx = i;
            for ( int j = i + 1; j < arr.size(); j++ )
                if ( arr[ j ] < arr[ min_idx ] )
                    min_idx = j;


            swap( arr[ min_idx ], arr[ i ] );
        }
    }
}

void generate( vector< int > &vec ) {
    srand( time( nullptr ));
    for ( int &x:vec ) {
        x = rand() % vec.size();
    }
}


template < typename T >
void insertion_sort( vector< T > &arr ) {
    T key;

    for ( int i = 1; i < arr.size(); ++i ) {
        key = arr[ i ];
        int j = i - 1;
        while ( j >= 0 && key < arr[ j ] ) {
            arr[ j + 1 ] = arr[ j ];
            --j;
        }
        arr[ j + 1 ] = key;
    }
}

template < typename T >
void shell_sort( vector< T > &arr ) {
    int n = arr.size();

    for ( int gap = n / 2; gap > 0; gap /= 2 ) {
        for ( int i = gap; i < n; ++i ) {
            T temp = arr[ i ];

            int j;
            for ( j = i; j >= gap && arr[ j - gap ] > temp; j -= gap )
                arr[ j ] = arr[ j - gap ];

            arr[ j ] = temp;
        }
    }
}

template < typename T >
void selection_sort( vector< T > &arr ) {
    int min_idx;

    for ( int i = 0; i < arr.size() - 1; i++ ) {
        min_idx = i;
        for ( int j = i + 1; j < arr.size(); j++ )
            if ( arr[ j ] < arr[ min_idx ] )
                min_idx = j;

        swap( arr[ min_idx ], arr[ i ] );
    }
}

template <typename T>
void quick_sort( vector< T > &arr, int low, int high ) {

    if ( low < high ) {
        T pivot = arr[ high ];
        int i = ( low - 1 );

        for ( int j = low; j <= high - 1; ++j ) {
            if ( arr[ j ] < pivot ) {
                ++i;
                swap( arr[ i ], arr[ j ] );
            }
        }
        ++i;
        swap( arr[ i ], arr[ high ] );

        quick_sort( arr, low, i - 1 );
        quick_sort( arr, i + 1, high );
    }
}


int main() {

    vector< int > vec{9,8,7,6,5,4,3,2,1};
//    vector< int > vec( 10 );
//    generate( vec );

    print( vec );

//    insertion::insertion_sort( vec );
//    insertion_sort( vec );
    quick::quick_sort( vec, 0, vec.size() - 1 );
//    shell::shell_sort( vec );
//    shell_sort( vec );
//    selection::selection_sort(vec);

    cout << endl;
    print( vec );

    return 0;
}


/*

struct A{
    unsigned a:8;
    unsigned b:8;
    unsigned c:8;
    unsigned d:9;
};

int main(){
    cout<<sizeof(A);
}

*/
